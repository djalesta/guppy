class ChatbotJob < ApplicationJob
  queue_as :default

  def perform(question)
    @question = question
    chatgpt_response = client.chat(
      parameters: {
        model: "gpt-4o-mini",
        messages: questions_formatted_for_openai, # to code as private method
        response_format: { type: "json_object" }
      }
    )
    new_content = chatgpt_response["choices"][0]["message"]["content"]

    parsed_content = JSON.parse(new_content)
    question.update(ai_answer: parsed_content['message'])
    fish = Fish.find_by(id: parsed_content["fish_id"])

    Turbo::StreamsChannel.broadcast_update_to(
      "question_#{@question.id}",
      target: "question_#{@question.id}",
      partial: "questions/question", locals: { question: question, fish: fish })
  end

   private

  def client
    @client ||= OpenAI::Client.new
  end

  def questions_formatted_for_openai
    questions = @question.user.questions
    results = []
    fish = Fish.all

  system_text = "You are an assistant for a dating platform for guppy fish. Your role is to help identify the best potential match based on attributes that the user inputs. If the exact attributes inputed by the user are not avialable, recommned the most simillar alternative. For example, if a gold coloured guppy is not available, recommend the most similalr color. Here are the guppy fish you should use to answer the user's questions. When you descripe the fish, only give the name and the relevant attribtes that the user inputed. Don't include any symbols like '**'. Respond with a json: { message: 'your message', fish_id: 'the id of the most relevant fish if any'} "
    # to nearest_products code as private method
    fish.each do |fish|
      system_text += "** FISH #{fish.id}: name: #{fish.name}, description: #{fish.fish_description}, color: #{fish.color}, sex: #{fish.sex}, length: #{fish.length} **"
    end
    results << { role: "system", content: system_text }

    questions.each do |question|
      results << { role: "user", content: question.user_question }
      results << { role: "assistant", content: question.ai_answer || "" }
    end

    return results
  end

end
