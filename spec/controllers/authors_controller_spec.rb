require 'rails_helper'

describe AuthorsController, type: :controller do
  let!(:author1) { create(:author_with_stories) }
  let(:story1) { create(:story, author_id: author1.id) }

  it 'lists authors with stories and bookmarks' do
    get :index
    expect(response).to render_template(:index)
    expect(assigns(:authors)).to include author1
  end
end
