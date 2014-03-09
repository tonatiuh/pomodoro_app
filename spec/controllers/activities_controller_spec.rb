require 'spec_helper'

describe ActivitiesController, '#create' do
  before { post :create, activity: Fabricate.to_params(:activity) }

  it 'creates a new activity' do
    expect(Activity.count).to eq(1)
  end

  it 'redirects to the root path' do
    expect(response).to redirect_to(root_path)
  end
end
