module StepablePiece
    def moves
      result = []
      move_diffs.each do |dif|
        new_pos = grow_unblocked_moves_in_dir(dif[0], dif[1])
        result << new_pos if valid_pos?(new_pos)
      end
      result
    end

    def valid_pos?(pos)
      return false unless (0..7).to_a.include?(pos[0]) && (0..7).to_a.include?(pos[1])
      board[pos].is_a?(NullPiece)
    end

    def grow_unblocked_moves_in_dir(dx, dy)
      result = self.pos.dup
      result[0] += dx
      result[1] += dy
      result
    end
end
