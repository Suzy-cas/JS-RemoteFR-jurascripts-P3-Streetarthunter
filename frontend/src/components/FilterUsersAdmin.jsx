import PropTypes from "prop-types";
import "./FilterUsersAdmin.scss";

function FilterUsersAdmin({ setSortOrder }) {
  const handleSortAscPseudo = () => {
    setSortOrder("ascPseudo");
  };

  const handleSortDescPseudo = () => {
    setSortOrder("descPseudo");
  };

  const handleSortAscPoints = () => {
    setSortOrder("ascPoints");
  };

  const handleSortDescPoints = () => {
    setSortOrder("descPoints");
  };

  return (
    <section className="fliter-users-section">
      <h2>Filtrer</h2>
      <div className="fliter-users-div">
        <button
          className="border-none"
          type="button"
          onClick={() => {
            handleSortAscPseudo();
          }}
        >
          <p>Pseudo croissant</p>
        </button>
        <button
          className="border-none"
          type="button"
          onClick={() => {
            handleSortDescPseudo();
          }}
        >
          <p>Pseudo décroissant</p>
        </button>
        <button
          className="border-none"
          type="button"
          onClick={() => {
            handleSortAscPoints();
          }}
        >
          <p>Points croissant</p>
        </button>
        <button
          className="border-none"
          type="button"
          onClick={() => {
            handleSortDescPoints();
          }}
        >
          <p>Points décroissant</p>
        </button>
        <button className="border-none" type="button">
          <p>Ordre Classements</p>
        </button>
        <button type="button">
          <p>Désordre Classements</p>
        </button>
      </div>
    </section>
  );
}

FilterUsersAdmin.propTypes = {
  setSortOrder: PropTypes.func.isRequired,
};

export default FilterUsersAdmin;
