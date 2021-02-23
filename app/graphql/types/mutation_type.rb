module Types
  class MutationType < Types::BaseObject
    field :update_post, mutation: Mutations::UpdatePost
    field :create_post, mutation: Mutations::CreatePost
    field :create_link, mutation: Mutations::CreateLink
    field :create_user, mutation: Mutations::CreateUser
    field :create_vote, mutation: Mutations::CreateVote
    field :signin_user, mutation: Mutations::SignInUser
  end
end
