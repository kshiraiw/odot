require "spec_helper"

describe "Logging Out" do
  it "allows a signed in user to sign out" do
    user = create(:user)
    visit login_path
    expect(page).to have_content("Log In")
    fill_in "Email", with: user.email
    fill_in "Password", with: "treehouse1"
    click_button "Sign In"

    expect(page).to have_content("Sign Out")
    click_link "Sign Out"
    expect(page).to_not have_content("Sign Out")
    expect(page).to have_content("Sign in")
  end
end