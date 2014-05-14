module GroupsHelper

	def update_member_count(group_id)
		#the group we're updating
		group = Group.find(group_id)

		#step 1: let's count the members
		num_members = group.members.count

		#step2: update the groups table
		group.num_members = num_members
		group.save

	end


end
