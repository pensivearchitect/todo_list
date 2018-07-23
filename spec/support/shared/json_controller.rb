require 'rails_helper'

RSpec.shared_examples 'for_json_controller_routing' do
  let(:controller) { described_class.controller_name.parameterize }
  it do
    should route(:get, "#{controller}.json")
      .to(controller: controller,
          action: :index,
          format: :json)
  end
  before do
    Fabricate.create(controller.singularize.to_sym, id: 1)
  end
  it do
    should route(:get, "#{controller}/1.json")
      .to controller: controller,
          action: :show,
          id: 1,
          format: :json
  end
  it do
    should route(:patch, "#{controller}/1.json")
      .to controller: controller,
          action: :update,
          id: 1,
          format: :json
  end
  it do
    should route(:put, "#{controller}/1.json")
      .to controller: controller,
          action: :update,
          id: 1,
          format: :json
  end
  it do
    should route(:delete, "#{controller}/1.json")
      .to controller: controller,
          action: :destroy,
          id: 1,
          format: :json
  end
end

RSpec.shared_examples 'for_json_controller' do
  let(:controller) { described_class.controller_name.singularize.to_sym }
  let(:attributes) do
    Fabricate.attributes_for(controller, id: 2)
             .map { |k, v| { :"#{k}".to_sym => v } }.reduce({}, :merge)
  end
  before :each do
    Fabricate.create(controller, id: 1)
  end
  describe '#index' do
    before { get :index }
    it { expect(response.status).to eq 200 }
  end
  describe '#create' do
    it do
      object_params = { id: 1, "#{controller}": attributes }
      should permit(*object_params[controller].keys - [:id])
        .for(:create, params: object_params)
        .on(controller)
    end
  end
  describe '#update' do
    it do
      object_params = { id: 1, "#{controller}": attributes }
      should permit(*object_params[controller].keys - [:id])
        .for(:update, params: object_params)
        .on(controller)
    end
  end
  describe '#destroy' do
    it do
      delete :destroy, params: { id: 1 }
      expect(response.status).to eq 200
    end
  end
end
