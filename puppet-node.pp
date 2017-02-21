File { backup => false }

node default {

  class { 'neo4j' :
    version => '3.1.1',
    install_method => 'archive',
    edition => 'enterprise',

    # Neo config properties
    dbms_connectors_default_listen_address => '0.0.0.0',
    dbms_connectors_default_advertised_address => '45.55.223.187',
    dbms_mode => 'CORE',
    causal_clustering_expected_core_cluster_size => 3,
    dbms_memory_heap_initial_size => '512m',
    dbms_memory_heap_max_size => '512m',


  }

  java::oracle { 'jdk8' :
     ensure  => 'present',
     version => '8',
     java_se => 'jdk',
   }

}
