require_relative 'rails_helper'
require_relative 'spec_helper'

RSpec.describe UserPolicy do
  let(:user) { User.new(user) }

    context 'being signed in' do
      it {is_expected.to permit_actions([:index, :destroy, :edit])}
    end


end