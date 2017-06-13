require 'spec_helper'

describe Yandex::Market::Client::Offers do
  let(:client) { Yandex::Market::Client.new(token: 'test') }

  describe '.offer(id, options)', :vcr do
    context 'succes request (with geo param)' do
      it 'returns current offer by id and geo' do
        id = "yDpJekrrgZFYQnNUPGX81U7Ui1IQG1PhCIvRV_1u08HanqcT-"\
        "_LtsCLZFuNNL0L5uCDeKSDLjyaP2TetNgH-lieUiaWCymvNkxjWefCFE"\
        "QRRdNQgp410SRdRvPQDll7X0cWjnGmL-CXbXAeP5vFONO9Lc2k_BJgc_zbr96vS"\
        "lL03AnZGf9RSmikYeYPuEGzZwIccOL8Of2zE-KIf3TRc0Phq2XegF6FzyTtovuTcxfo"
        options = { geo_id: 213 }
        result = client.offer(id, options)
        expect(result.offer.id).not_to be_nil
        assert_requested :get, market_url("/offers/#{id}?geo_id=213")
      end
    end
  end
end
