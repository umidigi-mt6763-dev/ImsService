.class public interface abstract Lcom/mediatek/ims/plugin/ImsCallPlugin;
.super Ljava/lang/Object;
.source "ImsCallPlugin.java"


# virtual methods
.method public abstract getMainCapabilityPhoneId()I
.end method

.method public abstract getModemMultiImsCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation
.end method

.method public abstract getRealRequest(I)I
.end method

.method public abstract getServiceCategoryFromEcc(Ljava/lang/String;)I
.end method

.method public abstract getSimApplicationState(I)I
.end method

.method public abstract getSimCardState(I)I
.end method

.method public abstract getUpgradeCancelFlag()I
.end method

.method public abstract getUpgradeCancelTimeoutFlag()I
.end method

.method public abstract isCapabilitySwitching()Z
.end method

.method public abstract isImsFwkRequest(I)Z
.end method

.method public abstract isSpecialEmergencyNumber(ILjava/lang/String;)Z
.end method

.method public abstract isSupportMims()Z
.end method

.method public abstract setImsFwkRequest(I)I
.end method

.method public abstract setSpecificEccCategory(I)V
.end method
