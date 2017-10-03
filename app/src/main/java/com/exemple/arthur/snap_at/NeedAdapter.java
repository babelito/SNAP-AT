package com.exemple.arthur.snap_at;

import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import java.util.ArrayList;

import com.example.arthur.snap_at.R;

public class NeedAdapter extends RecyclerView.Adapter<NeedAdapter.NeedViewHolder> {
    ArrayList<Need> needList = new ArrayList<>();

    public NeedAdapter(ArrayList<Need> needListe) {
        needList = needListe;
    }

    @Override
    public NeedViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Log.i("ADAPTER", "onCreateViewHolder: ");

        View cellView = LayoutInflater.from(parent.getContext()).inflate(R.layout.need_cell, parent, false);

        NeedViewHolder holder = new NeedViewHolder(cellView);
        return holder;
    }

    @Override
    public void onBindViewHolder(NeedViewHolder holder, int position) {
        Log.i("ADAPTER", "onBindViewHolder: " + position);
        Need contactToDisplay = needList.get(position);

        holder.displayNeed(contactToDisplay);
    }

    @Override
    public int getItemCount() {
        return needList.size();
    }

    public class NeedViewHolder extends RecyclerView.ViewHolder {

        private TextView nameLabel;

        public NeedViewHolder(View cellRoot) {
            super(cellRoot);

            nameLabel = (TextView) cellRoot.findViewById(R.id.name);
        }

        public void displayNeed(Need c) {
            nameLabel.setText(c.name);
        }
    }
}
