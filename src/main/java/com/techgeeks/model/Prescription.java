package com.techgeeks.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "prescription")
@Component
public class Prescription {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int preid;

	private String medicines;
	private int pid;
	private int did;
	private int aid;
	private int fnb;
	private int fna;
	private int anb;
	private int ana;
	private int ntb;
	private int nta;
	private String date;
	private String name;

	public Prescription() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Prescription(int preid, String medicines, int pid, int did, int aid, int fnb, int fna, int anb, int ana,
			int ntb, int nta, String date, String name) {
		super();
		this.preid = preid;
		this.medicines = medicines;
		this.pid = pid;
		this.did = did;
		this.aid = aid;
		this.fnb = fnb;
		this.fna = fna;
		this.anb = anb;
		this.ana = ana;
		this.ntb = ntb;
		this.nta = nta;
		this.date = date;
		this.name = name;
	}

	public int getPreid() {
		return preid;
	}

	public void setPreid(int preid) {
		this.preid = preid;
	}

	public String getMedicines() {
		return medicines;
	}

	public void setMedicines(String medicines) {
		this.medicines = medicines;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public int getDid() {
		return did;
	}

	public void setDid(int did) {
		this.did = did;
	}

	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public int getFnb() {
		return fnb;
	}

	public void setFnb(int fnb) {
		this.fnb = fnb;
	}

	public int getFna() {
		return fna;
	}

	public void setFna(int fna) {
		this.fna = fna;
	}

	public int getAnb() {
		return anb;
	}

	public void setAnb(int anb) {
		this.anb = anb;
	}

	public int getAna() {
		return ana;
	}

	public void setAna(int ana) {
		this.ana = ana;
	}

	public int getNtb() {
		return ntb;
	}

	public void setNtb(int ntb) {
		this.ntb = ntb;
	}

	public int getNta() {
		return nta;
	}

	public void setNta(int nta) {
		this.nta = nta;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Prescription [preid=" + preid + ", medicines=" + medicines + ", pid=" + pid + ", did=" + did + ", aid="
				+ aid + ", fnb=" + fnb + ", fna=" + fna + ", anb=" + anb + ", ana=" + ana + ", ntb=" + ntb + ", nta="
				+ nta + ", date=" + date + ", name=" + name + "]";
	}

}
