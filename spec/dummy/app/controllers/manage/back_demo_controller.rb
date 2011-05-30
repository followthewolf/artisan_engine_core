module Manage
  class BackDemoController < Manage::BackController
    def show
    end
    
    def notifications_demo
      flash.now[ :alert ]   = 'Alert!'
      flash.now[ :notice ]  = 'Success!'
    end
    
    def confirmation_demo
    end
    
    def confirm_demo
    end
  end
end