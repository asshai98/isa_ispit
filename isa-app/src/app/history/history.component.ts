import {Component, OnInit, ViewChild} from '@angular/core';
import {MatTableDataSource} from "@angular/material/table";
import {MatSort} from "@angular/material/sort";
import {MatPaginator} from "@angular/material/paginator";
import {Router} from "@angular/router";
import {HistoryService} from "./history.service";
import {MatDialog} from "@angular/material/dialog";
import {SuccessComponent} from "../auth/success/success.component";
import {History} from "./history";

@Component({
  selector: 'app-history',
  templateUrl: './history.component.html',
  styleUrls: ['./history.component.css']
})
export class HistoryComponent implements OnInit {

  displayedColumns = ["id", "campaign_name", "lasted", "action"];
  historyDataSource: MatTableDataSource<History>


  @ViewChild(MatSort) sort : MatSort;
  @ViewChild(MatPaginator) paginator : MatPaginator;

  constructor(private router: Router, private _service:HistoryService, private dialog: MatDialog) { }

  ngOnInit() {
    this.historyDataSource = new MatTableDataSource<History>();
    this._service.fetchHistoryList().subscribe(data => {
      this.historyDataSource.data = data;
      return data;
    });

  }

  ngAfterViewInit() {
    this.historyDataSource.sort = this.sort;
    this.historyDataSource.paginator = this.paginator;
  }

  rate(id:number){
    const dialogRef = this.dialog.open(SuccessComponent);

  }

  doFilter(filterValue : string) {
    this.historyDataSource.filter = filterValue.trim().toLowerCase();
  }

}
