class TestsController < ActionController::Base
  def bad_name(name)
    if name == 'thangphan'
      'Xin chao'
    else
      'Tam biet'
    end
  end
end
