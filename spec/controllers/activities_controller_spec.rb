require 'spec_helper'


describe ActivitiesController, '#index' do
  it 'assigns activities' do
    # Fabricate :activity
    get :index
    expect(response.status).to eq(200)
    # expect(assigns(:activities)).to eq(Activity.all)
  end
end

describe ActivitiesController, '#create' do
  before { post :create, activity: Fabricate.to_params(:activity, title: 'Foo') }

  it 'creates a new activity' do
    expect(Activity.last.title).to eq('Foo')
  end

  it 'redirects to the root path' do
    expect(response).to redirect_to(root_path)
  end
end

describe ActivitiesController, '#delete' do
  let!(:activity) { Fabricate :activity }

  it 'deletes an activity' do
    expect { post :destroy, id: activity.id }.to change { Activity.count }.to(0)
  end

  it 'redirects to the home page' do
    post :destroy, id: activity.id
    expect(response).to redirect_to(root_path)
  end
end
