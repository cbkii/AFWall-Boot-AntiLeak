.class public Lcom/stericson/rootshell/containers/RootClass;
.super Ljava/lang/Object;
.source "RootClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericson/rootshell/containers/RootClass$RootArgs;,
        Lcom/stericson/rootshell/containers/RootClass$AnnotationsFinder;,
        Lcom/stericson/rootshell/containers/RootClass$Candidate;,
        Lcom/stericson/rootshell/containers/RootClass$READ_STATE;
    }
.end annotation


# static fields
.field static PATH_TO_DX:Ljava/lang/String; = "/Users/Chris/Projects/android-sdk-macosx/build-tools/18.0.1/dx"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    aget-object v1, p1, v0

    .line 45
    new-instance v2, Lcom/stericson/rootshell/containers/RootClass$RootArgs;

    invoke-direct {v2}, Lcom/stericson/rootshell/containers/RootClass$RootArgs;-><init>()V

    .line 46
    array-length v3, p1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v2, Lcom/stericson/rootshell/containers/RootClass$RootArgs;->args:[Ljava/lang/String;

    .line 47
    iget-object v3, v2, Lcom/stericson/rootshell/containers/RootClass$RootArgs;->args:[Ljava/lang/String;

    array-length v5, p1

    sub-int/2addr v5, v4

    invoke-static {p1, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/Class;

    .line 49
    const-class v3, Lcom/stericson/rootshell/containers/RootClass$RootArgs;

    aput-object v3, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static displayError(Ljava/lang/Exception;)V
    .locals 3

    .line 65
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "##ERR##"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "##"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    .line 319
    :try_start_0
    array-length v0, p0

    if-nez v0, :cond_0

    .line 320
    new-instance p0, Lcom/stericson/rootshell/containers/RootClass$AnnotationsFinder;

    invoke-direct {p0}, Lcom/stericson/rootshell/containers/RootClass$AnnotationsFinder;-><init>()V

    goto :goto_0

    .line 322
    :cond_0
    new-instance v0, Lcom/stericson/rootshell/containers/RootClass;

    invoke-direct {v0, p0}, Lcom/stericson/rootshell/containers/RootClass;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 325
    invoke-static {p0}, Lcom/stericson/rootshell/containers/RootClass;->displayError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
