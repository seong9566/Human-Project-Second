package site.metacoding.miniproject.domain.alarm;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;

import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Repository
public class AlarmRepository {
	private final EntityManager em;

	public Alarm insert(Alarm alarm) {
		em.persist(alarm);
		return alarm;
	}

	public List<Alarm> findAll() {
		List<Alarm> alarmList = em.createNativeQuery("SELECT * FROM alarm", Alarm.class)
				.getResultList();
		return alarmList;
	}

	public Optional<Alarm> findById(Long usersId) {
		try {
			Optional<Alarm> alarmOP = Optional.of(em.createNativeQuery("SELECT * FROM alarm WHERE users_id =:usersId",Alarm.class)
			.setParameter("users_id",usersId)
			.getSingleResult();
			return alarmOP;
		} catch (Exception e) {
			return Optional.empty();
		}
	}

	public Optional<Alarm> findByUsersId(Long usersId) {
		try {
			Optional<Alarm> alarmOP = Optional.of(em
					.createQuery(
							"select a from alarm a WHERE users_id = :usersId",
							Alarm.class)
					.setParameter("users_id", usersId)
					.getSingleResult());
			return alarmOP;
		} catch (Exception e) {
			return Optional.empty();
		}
	}
	// 업데이트는 더티체킹으로 변경 사항이기때문에 만들지 않음.

}
