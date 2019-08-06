﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;
using Sample.NetCore.Infrastructure.Data;

namespace Sample.NetCore.Infrastructure.Migrations.PostgreSQL
{
    [DbContext(typeof(PostgreSQLContext))]
    partial class PostgreSQLContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.SerialColumn)
                .HasAnnotation("ProductVersion", "2.2.6-servicing-10079")
                .HasAnnotation("Relational:MaxIdentifierLength", 63);

            modelBuilder.Entity("Sample.NetCore.Domain.Entities.IdentityUser", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Email");

                    b.Property<string>("MobilePhone");

                    b.Property<string>("Name");

                    b.Property<byte>("Status");

                    b.Property<string>("user_type")
                        .IsRequired();

                    b.HasKey("ID");

                    b.ToTable("Users");

                    b.HasDiscriminator<string>("user_type").HasValue("user_id");
                });

            modelBuilder.Entity("Sample.NetCore.Domain.Entities.Movie", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Genre")
                        .IsRequired();

                    b.Property<decimal>("Price")
                        .HasColumnType("decimal(18,2)");

                    b.Property<string>("Rating")
                        .IsRequired()
                        .HasMaxLength(5);

                    b.Property<DateTime>("ReleaseDate");

                    b.Property<string>("Title")
                        .IsRequired()
                        .HasMaxLength(60);

                    b.HasKey("ID");

                    b.ToTable("Movies");
                });

            modelBuilder.Entity("Sample.NetCore.Domain.Entities.ApplicationUser", b =>
                {
                    b.HasBaseType("Sample.NetCore.Domain.Entities.IdentityUser");

                    b.Property<byte[]>("AvatarImage");

                    b.HasDiscriminator().HasValue("user_app");
                });
#pragma warning restore 612, 618
        }
    }
}
