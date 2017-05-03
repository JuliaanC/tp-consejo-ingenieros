<?php

class 01_Migration_create_base extends CI_Migration {

	public function up() {

				$this->dbforge->add_field(array(
			'id_Proyecto' => array('type' => 'INT', 'constraint' => 11, 'unsigned' => TRUE, 'auto_increment' => TRUE),
			'Titulo_proyecto' => array('type' => 'VARCHAR', 'constraint' => '60' ),
			'Planilla_proyecto' => array('type' => 'VARCHAR', 'constraint' => '70'));
				$this->dbforge->add_key('id_Proyecto', true);
		$this->dbforge->create_table('Proyectos');



				$this->dbforge->add_field(array(
			'id_rubros' => array('type' => 'INT', 'constraint' => 11, 'unsigned' => TRUE, 'auto_increment' => TRUE),
			'Descripcion_rubros' => array('type' => 'VARCHAR', 'constraint' => '70' ));
				$this->dbforge->add_key('id_rubros', true);
		$this->dbforge->create_table('Rubros');


				$this->dbforge->add_field(array(
			'id_articulo' => array('type' => 'INT', 'constraint' => 11, 'unsigned' => TRUE, 'auto_increment' => TRUE),
			'Descripcion_articulo' => array('type' => 'VARCHAR', 'constraint' => '60' ),
			'Unidad_articulo' => array('type' => 'INT', 'constraint' => 10),
			'Rubro_Articulo' => array('type' => 'VARCHAR', 'constraint' => '40'));
						$this->dbforge->add_key('id_articulo', true);
		$this->dbforge->create_table('Articulos')

		$this->dbforge->add_field(array(
			'id_Analisis' => array('type' => 'INT', 'constraint' => 11, 'unsigned' => TRUE, 'auto_increment' => TRUE),
			'Rendimiento_recursos' => array('type' => 'LONG INT', 'constraint' => '10' ),
			'Rendimiento_proyecto' => array('type' => 'LONG INT', 'constraint' => '10'));
						$this->dbforge->add_key('id_Analisis', true);
		$this->dbforge->create_table('Analisis_Proyectos')


				$this->dbforge->add_field(array(
			'id_Recursos' => array('type' => 'INT', 'constraint' => 11, 'unsigned' => TRUE, 'auto_increment' => TRUE),
			'Desc_Rec' => array('type' => 'VARCHAR', 'constraint' => '60' ),
			'Uni_Rec' => array('type' => 'INT', 'constraint' => '10'),
			'Nom_Rec' => array('type' => 'VARCHAR', 'constraint' => '40'),
			'Fecha_rec' => array( 'type' => 'DATETIME', 'null' => FALSE 
		));
					$this->dbforge->add_key('id_Recursos', true);
		$this->dbforge->create_table('Recursos')



				$this->dbforge->add_field(array(
			'id_ManObra' => array('type' => 'INT', 'constraint' => 11, 'unsigned' => TRUE, 'auto_increment' => TRUE),
			'Precio_mano' => array('type' => 'Short Float', 'constraint' => '20' ));
							$this->dbforge->add_key('id_ManObra', true);
		$this->dbforge->create_table('ManoDeObras')

				$this->dbforge->add_field(array(
			'id_ObraFuera' => array('type' => 'INT', 'constraint' => 11, 'unsigned' => TRUE, 'auto_increment' => TRUE),
			'PreObrFuer' => array('type' => 'SHORT FLOAT', 'constraint' => '20' ));
							$this->dbforge->add_key('id_ObraFuera', true);
		$this->dbforge->create_table('ManObraFuera')


				$this->dbforge->add_field(array(
			'id_Provee' => array('type' => 'INT', 'constraint' => 11, 'unsigned' => TRUE, 'auto_increment' => TRUE),
			'Desc_Provee' => array('type' => 'VARCHAR', 'constraint' => '70' ));
				$this->dbforge->add_key('id_Provee', true);
		$this->dbforge->create_table('Proveedores')


		}

	public function down()	{
				$this->dbforge->drop_table("Proyectos", TRUE);
				$this->dbforge->drop_table("Rubros", TRUE);
				$this->dbforge->drop_table("Articulos", TRUE);
				$this->dbforge->drop_table("Analisis_Proyectos", TRUE);
				$this->dbforge->drop_table("Recursos", TRUE);
				$this->dbforge->drop_table("ManoDeObras", TRUE);
				$this->dbforge->drop_table("ManObraFuera", TRUE);
				$this->dbforge->drop_table("Proveedores", TRUE);
	}
}
