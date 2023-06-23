package taxi.jdbc.service.Impl;

import java.util.List;
import java.util.NoSuchElementException;
import taxi.jdbc.dao.ManufacturerDao;
import taxi.jdbc.lib.Inject;
import taxi.jdbc.lib.Service;
import taxi.jdbc.model.Manufacturer;
import taxi.jdbc.service.ManufacturerService;

@Service
public class ManufacturerServiceImpl implements ManufacturerService {
    @Inject
    private ManufacturerDao manufacturerDao;

    @Override
    public Manufacturer create(Manufacturer manufacturer) {
        return manufacturerDao.create(manufacturer);
    }

    @Override
    public Manufacturer get(Long id) {
        return manufacturerDao.get(id)
                .orElseThrow(() -> new NoSuchElementException("Could not get manufacturer "
                        + "by id = " + id));
    }

    @Override
    public List<Manufacturer> getAll() {
        return manufacturerDao.getAll();
    }

    @Override
    public Manufacturer update(Manufacturer manufacturer) {
        return manufacturerDao.update(manufacturer);
    }

    @Override
    public boolean delete(Long id) {
        return manufacturerDao.delete(id);
    }
}
