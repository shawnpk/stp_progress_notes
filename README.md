# SLP Notes

### Models

- ProgressNote

### Instructions

1. clone repository
2. cd stp_progress_notes
3. rails s
   - yarn install --check-files if prompted
4. rails s
5. localhost:3000
6. If there is no data
   - stop server
   - rails db:{drop,create,migrate,seed}
   - rails s
