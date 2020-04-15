require 'plays'

describe Play do 
    describe 'find by titile' do
        it 'returns the Play matching the given title' do
            expect(Play.find_by_title('All My Sons').year).to eq(1947)
        end
    end
    describe 'find by playright' do
            it 'returns the Play matching the given playright' do
                expect(Play.find_by_playwright('Arthur Miller').year).to eq(1947)
            end
     end
end
