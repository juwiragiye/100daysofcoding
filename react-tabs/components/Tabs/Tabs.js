import styles from '../../styles/Tabs.module.css';
const Tabs = () => {
  return (
    <div>
      <ul className={styles.tabs}>
        <li className={styles.current}>Tab 1</li>
        <li>Tab 2</li>
        <li>Tab 3</li>
      </ul>
    </div>
  );
};

export { Tabs };
