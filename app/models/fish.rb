class Fish < ApplicationRecord
  belongs_to :user
  has_many :matches, dependent: :destroy
  has_many_attached :photos







private

def article_params
  params.require(:fish).permit(:title, :body, :photos)
end

end
