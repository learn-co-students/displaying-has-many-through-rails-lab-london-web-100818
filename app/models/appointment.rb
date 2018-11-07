class Appointment < ActiveRecord::Base
    belongs_to :doctor
    belongs_to :patient



    def date
        unformat_date = self.appointment_datetime
        format_date = unformat_date.strftime("%B %d, %Y at %H:%M")
        format_date
    end


end
