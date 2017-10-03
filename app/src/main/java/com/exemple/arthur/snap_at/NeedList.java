package com.exemple.arthur.snap_at;

import android.app.Activity;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;

import com.example.arthur.snap_at.R;
import com.exemple.arthur.snap_at.Need;
import com.exemple.arthur.snap_at.NeedAdapter;

import java.util.ArrayList;

public class NeedList extends Activity {

    private RecyclerView needListRecyclerView;

    private ArrayList<Need> needList = new ArrayList<Need>();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.need_list);

        needList.add(new com.exemple.arthur.snap_at.Need("a"));
        needList.add(new com.exemple.arthur.snap_at.Need("b"));
        needList.add(new com.exemple.arthur.snap_at.Need("c"));

        needListRecyclerView = (RecyclerView) findViewById(R.id.needList);
        needListRecyclerView.setLayoutManager(new LinearLayoutManager(this));
        needListRecyclerView.setAdapter(new NeedAdapter(needList));
    }
}
