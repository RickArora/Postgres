require 'plays'

describe Play do 
    describe 'find by titile' do
        subject (:list_of_plays) {Play.new}
        it 'returns the Play matching the given title' do
            expect(Play.find_by_title('All My Sons').year).to eq(1947)
        end
    end
end
