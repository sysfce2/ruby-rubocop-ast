# frozen_string_literal: true

module RuboCop
  module AST
    # A node extension for `ensure` nodes. This will be used in place of a plain
    # node when the builder constructs the AST, making its methods available
    # to all `ensure` nodes within RuboCop.
    class EnsureNode < Node
      # Returns the body of the `ensure` clause.
      #
      # @return [Node, nil] The body of the `ensure`.
      def body
        node_parts[1]
      end

      # Checks whether this node body is a void context.
      # Always `true` for `ensure`.
      #
      # @return [true] whether the `ensure` node body is a void context
      def void_context?
        true
      end
    end
  end
end
