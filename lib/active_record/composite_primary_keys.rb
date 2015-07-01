ActiveRecord::Base::CompositeClassMethods.class_eval do
  def find_by_csv_ids(csv_ids)
    find CompositePrimaryKeys::CompositeKeys.parse csv_ids
  end
end
ActiveRecord::Base::CompositeInstanceMethods.class_eval do
  def csv_ids
    Array(id).join(',')
  end
end