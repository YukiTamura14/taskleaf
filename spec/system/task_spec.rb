require 'rails_helper'

RSpec.describe Task, type: :system do
  describe 'Task index' do
    it 'enables user to index task list' do
      task = FactoryBot.create(:task)
      visit tasks_path
      expect(page).to have_content task.name
    end
  end

  describe 'Task show' do
    it 'enables user to show task detail' do
      task = FactoryBot.create(:task)
      visit tasks_path
      click_link 'Show'
      expect(page).to have_content task.name
    end
  end

  describe 'Task new create' do
    it 'enables user to create new task' do
      visit tasks_path
      click_link 'New Task'
      fill_in 'Name', with: 'test_name'
      fill_in 'Detail', with: 'test_detail'
      click_button 'Create Task'
      expect(page).to have_content 'Task was successfully created.'
      expect(page).to have_content 'test_name'
      expect(page).to have_content 'test_detail'
    end
  end

  describe 'Task edit update' do
    it 'enables user to update task' do
      task = FactoryBot.create(:task)
      visit tasks_path
      click_link 'Edit'
      fill_in 'Name', with: 'name_edit'
      fill_in 'Detail', with: 'detail_edit'
      click_button 'Update Task'
      expect(page).to have_content 'Task was successfully updated.'
      expect(page).to have_content 'name_edit'
      expect(page).to have_content 'detail_edit'
    end
  end

  describe 'Task destroy' do
    it 'enables user to destroy task' do
      task = FactoryBot.create(:task)
      visit tasks_path
      click_link 'Destroy'
      page.driver.browser.switch_to.alert.accept
      expect(page).to have_content 'Task was successfully destroyed.'
      expect(page).not_to have_content task.name
      expect(page).not_to have_content task.detail
    end
  end
end
