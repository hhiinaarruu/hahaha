require 'rails_helper'

describe Comment do
  context 'validations' do
    it { is_expected.to validate_presence_of :content }
  end

  context 'assocations' do
    it { is_expected.to belong_to :user }
    it { is_expected.to belong_to :post }
  end
end
