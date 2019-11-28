<template>
    <div class="block">
        <!--<p>{{value}}</p>-->
      <el-date-picker 
        v-model="value"
        type="daterange"
        align="right"
        unlink-panels
        range-separator="→"
        start-placeholder="订房日期"
        end-placeholder="退房日期"
        :picker-options="pickerOptions">
      </el-date-picker>
    </div>
  </template>
  
  <script>
    export default {
      data() {
        return {
          pickerOptions: {
            shortcuts: [{
              text: '最近一天',
              onClick(picker) {
                const end = new Date();
                const start = new Date();
                start.setTime(start.getTime() - 3600 * 1000 * 24);
                picker.$emit('pick', [start, end]);
              }
            }, {
              text: '最近一周',
              onClick(picker) {
                const end = new Date();
                const start = new Date();
                start.setTime(start.getTime() - 3600 * 1000 * 24*7);
                picker.$emit('pick', [start, end]);
              }
            }, {
              text: '最近一个月',
              onClick(picker) {
                const end = new Date();
                const start = new Date();
                start.setTime(start.getTime() - 3600 * 1000 * 24 * 30);
                picker.$emit('pick', [start, end]);
              }
            }]
          },
          value:'',
        };
      }
    };
  </script>