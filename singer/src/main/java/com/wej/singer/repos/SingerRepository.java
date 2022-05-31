package com.wej.singer.repos;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wej.singer.entities.Band;
import com.wej.singer.entities.Singer;

	public interface SingerRepository extends JpaRepository<Singer, Long> {

		List<Singer> findByNomSinger(String nom);

		List<Singer> findByBand(Band bands);
	}
