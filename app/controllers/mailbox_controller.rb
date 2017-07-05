class MailboxController < ApplicationController
  helper_method :mailbox
  before_action :authenticate_user!

  def inbox
    @inbox = mailbox.inbox
    @active = :inbox
  end

  def sent
    @sent = mailbox.sentbox
    @active = :sent
  end

  def trash
    @trash = mailbox.trash
    @active = :trash    
  end

  private
  def mailbox
    @mailbox ||= current_user.mailbox
    
  end
end
