require 'spec_helper'

describe Activity do
  it 'is created' do
    expect {
      Fabricate :activity
    }.to change { Activity.count }.by(1)
  end
end
