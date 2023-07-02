package taxi.service;

import java.util.List;
import java.util.Optional;

import taxi.model.Driver;

public interface DriverService extends GenericService<Driver> {
    Optional<Driver> findByLogin(String login);
}
