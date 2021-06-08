Registry.delete_all

Registry.create(name: 'First Registry', location: 'Chicago')
Registry.create(name: 'Second Registry', location: 'Chicago')
Registry.create(name: 'Third Registry', location: 'Portland', status: 'Closed')
Registry.create(name: 'Fourth Registry', location: 'Madison')

Participant.create(name: 'abbie', dob: '1985-11-12', gender: 'F', email: 'aaa@gmail', phone: '847', contact_method: 'phone')
Participant.create(name: 'princess', dob: '1983-11-12', gender: 'F', email: 'bbb@gmail', phone: '94834737', contact_method: 'phone')
Participant.create(name: 'winston', dob: '1999-11-12', gender: 'M', email: 'ccc@gmail', phone: '230894723', contact_method: 'email')

Coordinator.create(email: 'abc@gmail.com', name: 'Aaron', phone: '8476360835')
Coordinator.create(email: 'bcd@gmail.com', name: 'James', phone: '7736456372')
Coordinator.create(email: 'cde@gmail.com', name: 'Rachelle', phone: '903228903')

RegistryParticipant.create(participant_id: 1, registry_id: 1, coordinator_email: 'aaa@gmail.com', enrollment_date: Time.now, remarks: 'happy to be here')
RegistryParticipant.create(participant_id: 2, registry_id: 1, coordinator_email: 'bbb@gmail.com', enrollment_date: Time.now, remarks: 'happy to be here!!')