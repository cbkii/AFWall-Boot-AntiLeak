.class public final Ldev/ukanth/ufirewall/log/LogPreference_Table;
.super Lcom/raizlabs/android/dbflow/structure/ModelAdapter;
.source "LogPreference_Table.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/raizlabs/android/dbflow/structure/ModelAdapter<",
        "Ldev/ukanth/ufirewall/log/LogPreference;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

.field public static final appName:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final disable:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final skip:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final skipInterval:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final timestamp:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final uid:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 27
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v1, Ldev/ukanth/ufirewall/log/LogPreference;

    const-string v2, "uid"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Ldev/ukanth/ufirewall/log/LogPreference_Table;->uid:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 29
    new-instance v1, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v2, Ldev/ukanth/ufirewall/log/LogPreference;

    const-string v3, "appName"

    invoke-direct {v1, v2, v3}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Ldev/ukanth/ufirewall/log/LogPreference_Table;->appName:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 31
    new-instance v2, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v3, Ldev/ukanth/ufirewall/log/LogPreference;

    const-string v4, "skipInterval"

    invoke-direct {v2, v3, v4}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v2, Ldev/ukanth/ufirewall/log/LogPreference_Table;->skipInterval:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 33
    new-instance v3, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v4, Ldev/ukanth/ufirewall/log/LogPreference;

    const-string v5, "skip"

    invoke-direct {v3, v4, v5}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v3, Ldev/ukanth/ufirewall/log/LogPreference_Table;->skip:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 35
    new-instance v4, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v5, Ldev/ukanth/ufirewall/log/LogPreference;

    const-string v6, "timestamp"

    invoke-direct {v4, v5, v6}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v4, Ldev/ukanth/ufirewall/log/LogPreference_Table;->timestamp:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 37
    new-instance v5, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-class v6, Ldev/ukanth/ufirewall/log/LogPreference;

    const-string v7, "disable"

    invoke-direct {v5, v6, v7}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v5, Ldev/ukanth/ufirewall/log/LogPreference_Table;->disable:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const/4 v6, 0x6

    new-array v6, v6, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    const/4 v7, 0x0

    .line 39
    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    sput-object v6, Ldev/ukanth/ufirewall/log/LogPreference_Table;->ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    return-void
.end method

.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;-><init>(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V

    return-void
.end method


# virtual methods
.method public final bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/log/LogPreference;)V
    .locals 2

    .line 127
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogPreference;->getUid()I

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x1

    invoke-interface {p1, p2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 24
    check-cast p2, Ldev/ukanth/ufirewall/log/LogPreference;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/log/LogPreference_Table;->bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/log/LogPreference;)V

    return-void
.end method

.method public final bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/log/LogPreference;I)V
    .locals 8

    add-int/lit8 v0, p3, 0x1

    .line 106
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogPreference;->getUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    add-int/lit8 v0, p3, 0x2

    .line 107
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogPreference;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 108
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogPreference;->getSkipInterval()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    add-int/lit8 v0, p3, 0x4

    .line 109
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogPreference;->isSkip()Z

    move-result v1

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_0

    move-wide v6, v2

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    invoke-interface {p1, v0, v6, v7}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    add-int/lit8 v0, p3, 0x5

    .line 110
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogPreference;->getTimestamp()J

    move-result-wide v6

    invoke-interface {p1, v0, v6, v7}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    add-int/lit8 p3, p3, 0x6

    .line 111
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogPreference;->isDisable()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-wide v2, v4

    :goto_1
    invoke-interface {p1, p3, v2, v3}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 24
    check-cast p2, Ldev/ukanth/ufirewall/log/LogPreference;

    invoke-virtual {p0, p1, p2, p3}, Ldev/ukanth/ufirewall/log/LogPreference_Table;->bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/log/LogPreference;I)V

    return-void
.end method

.method public final bindToInsertValues(Landroid/content/ContentValues;Ldev/ukanth/ufirewall/log/LogPreference;)V
    .locals 2

    .line 95
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogPreference;->getUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "`uid`"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "`appName`"

    .line 96
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogPreference;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogPreference;->getSkipInterval()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "`skipInterval`"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 98
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogPreference;->isSkip()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "`skip`"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogPreference;->getTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "`timestamp`"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 100
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogPreference;->isDisable()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "`disable`"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic bindToInsertValues(Landroid/content/ContentValues;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 24
    check-cast p2, Ldev/ukanth/ufirewall/log/LogPreference;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/log/LogPreference_Table;->bindToInsertValues(Landroid/content/ContentValues;Ldev/ukanth/ufirewall/log/LogPreference;)V

    return-void
.end method

.method public final bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/log/LogPreference;)V
    .locals 7

    .line 116
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogPreference;->getUid()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    const/4 v0, 0x2

    .line 117
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogPreference;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindStringOrNull(ILjava/lang/String;)V

    const/4 v0, 0x3

    .line 118
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogPreference;->getSkipInterval()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    .line 119
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogPreference;->isSkip()Z

    move-result v0

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_0

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    const/4 v0, 0x4

    invoke-interface {p1, v0, v5, v6}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    const/4 v0, 0x5

    .line 120
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogPreference;->getTimestamp()J

    move-result-wide v5

    invoke-interface {p1, v0, v5, v6}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    .line 121
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogPreference;->isDisable()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-wide v1, v3

    :goto_1
    const/4 v0, 0x6

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    .line 122
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogPreference;->getUid()I

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x7

    invoke-interface {p1, p2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 24
    check-cast p2, Ldev/ukanth/ufirewall/log/LogPreference;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/log/LogPreference_Table;->bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ldev/ukanth/ufirewall/log/LogPreference;)V

    return-void
.end method

.method public final exists(Ldev/ukanth/ufirewall/log/LogPreference;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 172
    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->selectCountOf([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object v1

    const-class v2, Ldev/ukanth/ufirewall/log/LogPreference;

    .line 173
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    .line 174
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/log/LogPreference_Table;->getPrimaryConditionClause(Ldev/ukanth/ufirewall/log/LogPreference;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/From;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object p1

    .line 175
    invoke-virtual {p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/Where;->hasData(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic exists(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 24
    check-cast p1, Ldev/ukanth/ufirewall/log/LogPreference;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/log/LogPreference_Table;->exists(Ldev/ukanth/ufirewall/log/LogPreference;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result p1

    return p1
.end method

.method public final getAllColumnProperties()[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/log/LogPreference_Table;->ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    return-object v0
.end method

.method public final getCompiledStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT INTO `LogPreference`(`uid`,`appName`,`skipInterval`,`skip`,`timestamp`,`disable`) VALUES (?,?,?,?,?,?)"

    return-object v0
.end method

.method public final getCreationQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `LogPreference`(`uid` INTEGER, `appName` TEXT, `skipInterval` INTEGER, `skip` INTEGER, `timestamp` INTEGER, `disable` INTEGER, PRIMARY KEY(`uid`))"

    return-object v0
.end method

.method public final getDeleteStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `LogPreference` WHERE `uid`=?"

    return-object v0
.end method

.method public final getModelClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ldev/ukanth/ufirewall/log/LogPreference;",
            ">;"
        }
    .end annotation

    .line 47
    const-class v0, Ldev/ukanth/ufirewall/log/LogPreference;

    return-object v0
.end method

.method public final getPrimaryConditionClause(Ldev/ukanth/ufirewall/log/LogPreference;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;
    .locals 2

    .line 180
    invoke-static {}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->clause()Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object v0

    sget-object v1, Ldev/ukanth/ufirewall/log/LogPreference_Table;->uid:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 181
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/log/LogPreference;->getUid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->eq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->and(Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    return-object v0
.end method

.method public bridge synthetic getPrimaryConditionClause(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 24
    check-cast p1, Ldev/ukanth/ufirewall/log/LogPreference;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/log/LogPreference_Table;->getPrimaryConditionClause(Ldev/ukanth/ufirewall/log/LogPreference;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object p1

    return-object p1
.end method

.method public final getProperty(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 2

    .line 62
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->quoteIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "`timestamp`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "`uid`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "`appName`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "`skip`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "`disable`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "`skipInterval`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 83
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid column name passed. Ensure you are calling the correct table\'s column"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object p1, Ldev/ukanth/ufirewall/log/LogPreference_Table;->timestamp:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :pswitch_1
    sget-object p1, Ldev/ukanth/ufirewall/log/LogPreference_Table;->uid:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :pswitch_2
    sget-object p1, Ldev/ukanth/ufirewall/log/LogPreference_Table;->appName:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :pswitch_3
    sget-object p1, Ldev/ukanth/ufirewall/log/LogPreference_Table;->skip:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :pswitch_4
    sget-object p1, Ldev/ukanth/ufirewall/log/LogPreference_Table;->disable:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :pswitch_5
    sget-object p1, Ldev/ukanth/ufirewall/log/LogPreference_Table;->skipInterval:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x695ab6e4 -> :sswitch_5
        -0x56302528 -> :sswitch_4
        -0x55a7f99f -> :sswitch_3
        -0x21b2c60c -> :sswitch_2
        0x57f9670 -> :sswitch_1
        0x3b9f026a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "`LogPreference`"

    return-object v0
.end method

.method public final getUpdateStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE `LogPreference` SET `uid`=?,`appName`=?,`skipInterval`=?,`skip`=?,`timestamp`=?,`disable`=? WHERE `uid`=?"

    return-object v0
.end method

.method public final loadFromCursor(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ldev/ukanth/ufirewall/log/LogPreference;)V
    .locals 5

    const-string v0, "uid"

    .line 152
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getIntOrDefault(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Ldev/ukanth/ufirewall/log/LogPreference;->setUid(I)V

    const-string v0, "appName"

    .line 153
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getStringOrDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ldev/ukanth/ufirewall/log/LogPreference;->setAppName(Ljava/lang/String;)V

    const-string v0, "skipInterval"

    .line 154
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getLongOrDefault(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ldev/ukanth/ufirewall/log/LogPreference;->setSkipInterval(J)V

    const-string v0, "skip"

    .line 155
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 156
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 157
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Ldev/ukanth/ufirewall/log/LogPreference;->setSkip(Z)V

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p2, v1}, Ldev/ukanth/ufirewall/log/LogPreference;->setSkip(Z)V

    :goto_0
    const-string v0, "timestamp"

    .line 161
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getLongOrDefault(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Ldev/ukanth/ufirewall/log/LogPreference;->setTimestamp(J)V

    const-string v0, "disable"

    .line 162
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 163
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 164
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ldev/ukanth/ufirewall/log/LogPreference;->setDisable(Z)V

    goto :goto_1

    .line 166
    :cond_1
    invoke-virtual {p2, v1}, Ldev/ukanth/ufirewall/log/LogPreference;->setDisable(Z)V

    :goto_1
    return-void
.end method

.method public bridge synthetic loadFromCursor(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 24
    check-cast p2, Ldev/ukanth/ufirewall/log/LogPreference;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/log/LogPreference_Table;->loadFromCursor(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ldev/ukanth/ufirewall/log/LogPreference;)V

    return-void
.end method

.method public final newInstance()Ldev/ukanth/ufirewall/log/LogPreference;
    .locals 1

    .line 57
    new-instance v0, Ldev/ukanth/ufirewall/log/LogPreference;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/log/LogPreference;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/log/LogPreference_Table;->newInstance()Ldev/ukanth/ufirewall/log/LogPreference;

    move-result-object v0

    return-object v0
.end method
