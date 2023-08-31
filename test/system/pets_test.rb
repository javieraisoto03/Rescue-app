require "application_system_test_case"

class PetsTest < ApplicationSystemTestCase
  setup do
    @pet = pets(:one)
  end

  test "visiting the index" do
    visit pets_url
    assert_selector "h1", text: "Pets"
  end

  test "should create pet" do
    visit pets_url
    click_on "New pet"

    fill_in "Apodo", with: @pet.apodo
    fill_in "Descripcion", with: @pet.descripcion
    fill_in "Fecha", with: @pet.fecha
    fill_in "Imagen", with: @pet.imagen
    fill_in "Nombre", with: @pet.nombre
    fill_in "User", with: @pet.user_id
    click_on "Create Pet"

    assert_text "Pet was successfully created"
    click_on "Back"
  end

  test "should update Pet" do
    visit pet_url(@pet)
    click_on "Edit this pet", match: :first

    fill_in "Apodo", with: @pet.apodo
    fill_in "Descripcion", with: @pet.descripcion
    fill_in "Fecha", with: @pet.fecha
    fill_in "Imagen", with: @pet.imagen
    fill_in "Nombre", with: @pet.nombre
    fill_in "User", with: @pet.user_id
    click_on "Update Pet"

    assert_text "Pet was successfully updated"
    click_on "Back"
  end

  test "should destroy Pet" do
    visit pet_url(@pet)
    click_on "Destroy this pet", match: :first

    assert_text "Pet was successfully destroyed"
  end
end
