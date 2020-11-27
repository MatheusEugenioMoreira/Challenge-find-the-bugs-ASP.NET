using System;

namespace DTO
{
    class DTO_Produto
    {
        private int id, idcategoria, quantEstocada;
        private char descricao, unidade, lote;
        private DateTime dtvalidade;

        public int Id { get => id; set => id = value; }
        public int Idcategoria { get => idcategoria; set => idcategoria = value; }
        public int QuantEstocada { get => quantEstocada; set => quantEstocada = value; }
        public char Descricao { get => descricao; set => descricao = value; }
        public char Unidade { get => unidade; set => unidade = value; }
        public char Lote { get => lote; set => lote = value; }
        public DateTime Dtvalidade { get => dtvalidade; set => dtvalidade = value; }
    }
}
