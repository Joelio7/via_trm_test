FactoryGirl.define do
    factory :user do
        first_name {RandomData.random_name}
        last_name {RandomData.random_name}
        email {RandomData.random_email}
        password {"YPYP929292"}
        password_confirmation {"YPYP929292"}
    end
end
