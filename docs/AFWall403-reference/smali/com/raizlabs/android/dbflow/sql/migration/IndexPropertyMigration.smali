.class public abstract Lcom/raizlabs/android/dbflow/sql/migration/IndexPropertyMigration;
.super Lcom/raizlabs/android/dbflow/sql/migration/BaseMigration;
.source "IndexPropertyMigration.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/migration/BaseMigration;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getIndexProperty()Lcom/raizlabs/android/dbflow/sql/language/property/IndexProperty;
.end method

.method public migrate(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/migration/IndexPropertyMigration;->shouldCreate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/migration/IndexPropertyMigration;->getIndexProperty()Lcom/raizlabs/android/dbflow/sql/language/property/IndexProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/property/IndexProperty;->createIfNotExists(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/migration/IndexPropertyMigration;->getIndexProperty()Lcom/raizlabs/android/dbflow/sql/language/property/IndexProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/property/IndexProperty;->drop(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    :goto_0
    return-void
.end method

.method public shouldCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
