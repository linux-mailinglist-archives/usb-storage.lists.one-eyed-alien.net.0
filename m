Return-Path: <usb-storage+bncBD6LRVPZ6YGRB54K3OUQMGQENTQM4NA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf48.google.com (mail-qv1-xf48.google.com [IPv6:2607:f8b0:4864:20::f48])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3347D3FE8
	for <lists+usb-storage@lfdr.de>; Mon, 23 Oct 2023 21:11:52 +0200 (CEST)
Received: by mail-qv1-xf48.google.com with SMTP id 6a1803df08f44-66d03b02d16sf88038466d6.0
        for <lists+usb-storage@lfdr.de>; Mon, 23 Oct 2023 12:11:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698088311; cv=pass;
        d=google.com; s=arc-20160816;
        b=wFhS7KI9vfpFuZYqySf6tWV2kfeVlbg+11BWBV8ItOruAlNeATdz4UO5D51pePw9/C
         TCw/xJPuTVKHgWzzA3n8DKhUf/nSAS60TcHlzQ+mhPQH9h55+UMRHxlV2ZWNoBB6mgxp
         /KrQ/q+M14BtvKBADW9A1LsZIHckFPEAwvpkzCHL3lLSSaXBp6RuWgqqsyMBSdb5gvd3
         ywMR9NlrOcaKw02R2MNvL0RrQvKAfaToDjRvfKHvBp44YANKT09I8xDBBy8jAvf8rMnT
         SqUrzZcu9QVmn3ZS9wIfggHVKlNRnK/QN9e8omR53Dm+lbIAn5/Dn1sdKU53BoL7V9e/
         UVqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=hUShHabJ8S1FggeO1XbvzyVyhiAQQ+b5rCdEKuMH+Vs=;
        fh=CfFKgf8fgu+rbginYKqa38h3cNoteuuAwFHkvQOBJL8=;
        b=g/e3bBUuPX91MII2oB3hk4d0WPshv1D9xbbnmBp4odsnUtrPIDpPqxB4ZdKByXOvPx
         2b7/ogQufpf95XiHshiF2fHlQ59NyraIvob44v0zqQ1ivx7r2VAdr4vchb6xnEZ+2ggh
         E9lCrBq25xvLzBr02I2+KSLrpKe0C8BWcz0n0rtQxmyNvvXGmdqL9XLYnR9Jk9MH7UlX
         ddpnz+qDt4J9HfU+yIcoSf759B2ksfX45QYToX6z1nUOj8s170d8Xw58czQY6uPLuc0y
         LnHSR+GPNRgiAOmDTijWed2dEiZ4Y0PvhhylsKoc9TgTBakRRKxSBosIfawIPxjfFx0I
         gYAw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1698088311; x=1698693111; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hUShHabJ8S1FggeO1XbvzyVyhiAQQ+b5rCdEKuMH+Vs=;
        b=UZwMUrWVvm3tvaCACE6wimFPSxoFotFZpdtqIHfCM0zFvmW9esmuafy4xQB4jkGUrc
         QTCtf6jo+sgKrneXWtXI0tASWr6C7mzBfG0U93jcIXqA9p6pXE1xSPpoQWxalcKuqeO4
         zk27O195SOr+1QS7n9YbI141ZrdPe8OT6l6sg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698088311; x=1698693111;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hUShHabJ8S1FggeO1XbvzyVyhiAQQ+b5rCdEKuMH+Vs=;
        b=PyIHSf4HajR1UjjuuW4g7bJrC5CVBxelZ3V7Vu+UlEH5CJSRCoww3WKC5sZxFuguCl
         QKdhhKWwzZydsBjomI9IVcK6Tpe7bZbH+Mh+DqrVtC8aOH0EyASqPfaZ3VhGUFEuD2pv
         +EaECFaZMt92Ulwj7RwwO1zaSF5hvuiidHmuwi8VMwgHGwVD9jyEqaglwX2Xo6pHCvAD
         s9SauWHd3fEUKpmmNeIr+ge+MUIqs5E97Evs6qjc2GNqQd3ZHJd9MDuiF6OFcq0Uk6m/
         j5dNh/+YZKMC0AInqfWymmC6FtuyN0wLbqIp42s5RIyrS+j/4Ua63zaVobw66xNg0oMx
         JmtQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0Yx8w4op7zGewXihdeOCVB3XADWGaRU24fh8JVr1qyQRB1rkrd96
	jdADsZcPPhMYF1461T3aon9ZTg==
X-Google-Smtp-Source: AGHT+IH2JobCogWOBJPX0YMna54nOBJO9RIqkvN8w8VGkBoAhsFc04Udi80dv38Io/Mv2+UguCfeGA==
X-Received: by 2002:a05:6214:2b0d:b0:66d:aaa7:c77 with SMTP id jx13-20020a0562142b0d00b0066daaa70c77mr10369851qvb.0.1698088311334;
        Mon, 23 Oct 2023 12:11:51 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:17cf:b0:668:d9c1:f577 with SMTP id
 cu15-20020a05621417cf00b00668d9c1f577ls235920qvb.0.-pod-prod-00-us; Mon, 23
 Oct 2023 12:11:50 -0700 (PDT)
X-Received: by 2002:a05:6214:e45:b0:66f:8a14:b5a5 with SMTP id o5-20020a0562140e4500b0066f8a14b5a5mr1613810qvc.12.1698088310387;
        Mon, 23 Oct 2023 12:11:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698088310; cv=none;
        d=google.com; s=arc-20160816;
        b=Cju3mjEXYItYM2cU2/6rN5plo35f4EUVrn0WfboJm4D0YcSF/pRXdQE2sRfo5mZNGB
         8ACtNkNVzuYgcygHA9xMxgLTUbjHhnvxjS0CC1giU541gtQ8Of7aPAnG1urvxfxj12yl
         iYJntTv6hgx0JPc4EuJuAQDmK/gdo7aTreT3jcR7Qadey1N1ECajNRPNuC8vw6OJpsNn
         4N7Jk1vvsmQt20RAA4WDSfHG/54UJGTrgakqudaCezFK2VOuodzQx1ysiMVsBbF9I1I9
         DPmtvTH2PFWH46y0YjniTLNOnZB7PxV/O1TY4qKQ6sl0p1FiVaNpxR6ciGd1vZo5w5SZ
         ducg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=+ANiNEzN4NwfJfXcR7/XB5kRQB8CBBOMgHq2ILXU+Ks=;
        fh=CfFKgf8fgu+rbginYKqa38h3cNoteuuAwFHkvQOBJL8=;
        b=eLNSPM36xu3Mzy1DtGYp7OhKRgXYt5Z0ER1pt0x/I3spj3DNCPtk3wEaN3Yg74S80i
         B9WNQHi8Om567gp/BORZef9GsTLaDJEAzD8iwf3L9H0Hjz5VKPRLdKeVLSdzDJwBUMYR
         +EzV4MN/5KhHJ4yFMRu9wPxyj3BNzI3OVCphzRrrINO6lyf0r3FCTdTbbva2XjgfGEMc
         5soGwcHghcWlvRvq486o6FY8Oc748c5MEtb4XURfxdR/nNrrpUJt8sMVHKSX3cS2CDQY
         KiJdFkjD7irRPCPw3MDiD321VXf/bUwRc+uW1JZV93+Kgr5Pe6ykTZtL+W7j63dZBAve
         OEgg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id v24-20020a05620a0a9800b00773b6bed39esi5747371qkg.540.2023.10.23.12.11.50
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 23 Oct 2023 12:11:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 432947 invoked by uid 1000); 23 Oct 2023 15:11:49 -0400
Date: Mon, 23 Oct 2023 15:11:49 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Meng Li <Meng.Li@windriver.com>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb: storage: add shutdown function for usb
 storage driver
Message-ID: <33bd0779-bfe7-4c87-8fe6-ea8455df3b6b@rowland.harvard.edu>
References: <20231023054111.2744872-1-Meng.Li@windriver.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20231023054111.2744872-1-Meng.Li@windriver.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

On Mon, Oct 23, 2023 at 01:41:11PM +0800, Meng Li wrote:
> On ls1043/ls1046 rdb platform, if a PCIe-USB host controller is installed, and
> an USB disk is also installed on the PCIe card, when executing "reboot -f" to
> reset the board, there will be below error reported:
> usb 2-2: device not accepting address 2, error -108

Do you mean that this error occurs after the system has rebooted?  Or do 
you mean that the error is reported while the reboot is taking place?

That "device not accepting address" error message is generated by the 
USB core, not by the usb-storage driver.  How will changing usb-storage 
help fix the problem?

> This issue is introduced by linux-yocto commit 837547b64a34("driver: net:
> dpaa: release resource when executing kexec") that cause to spend more
> time on shutdown operation. So, the 2 platforms with DPAA are not reset
> immediately after executing force reboot command. Moreover, the usb-storage
> thread is still in active status, there is still control data transferred between
> USB disk and PCIe host controller. But now the shutdown callback of usb pci driver
> had been invoked to stop the PCIe host controller completely. In this situation,
> the data transferring failed and report error.

That's _supposed_ to happen.  By design, the "reboot -f" command is 
meant to carry out an immediate reboot, without using the init system, 
unmounting filesystems, or doing other cleanup operations.

If you want a clean reboot with no errors, don't use the "-f" option.

>  Therefore, add shutdown function
> used to disconnect the usb mass storage device to avoid data transferring under
> the stopped status of PCIe device.

I don't see how this will fix the problems associated with a forced 
reboot.  How is preventing data from being transferred any better than 
getting an error when you do try to transfer it?

> Signed-off-by: Meng Li <Meng.Li@windriver.com>
> ---
>  drivers/usb/storage/usb.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
> index ed7c6ad96a74..e076d7e3784f 100644
> --- a/drivers/usb/storage/usb.c
> +++ b/drivers/usb/storage/usb.c
> @@ -1142,6 +1142,15 @@ static int storage_probe(struct usb_interface *intf,
>  	return result;
>  }
>  
> +static void usb_stor_shutdown(struct device *dev)
> +{
> +	struct usb_driver *driver = to_usb_driver(dev->driver);
> +	struct usb_interface *intf = to_usb_interface(dev);
> +
> +	if (driver->disconnect)
> +		driver->disconnect(intf);
> +}
> +
>  static struct usb_driver usb_storage_driver = {
>  	.name =		DRV_NAME,
>  	.probe =	storage_probe,
> @@ -1151,6 +1160,7 @@ static struct usb_driver usb_storage_driver = {
>  	.reset_resume =	usb_stor_reset_resume,
>  	.pre_reset =	usb_stor_pre_reset,
>  	.post_reset =	usb_stor_post_reset,
> +	.drvwrap.driver.shutdown = usb_stor_shutdown,

This definitely looks like a layering violation.  If devices are to be 
disconnected during a system shutdown, the USB core should take care of 
it.  Not the individual device drivers.

What will happen if you make this change to usb-storage?  In a little 
while you'll want to do the same thing to the uas driver.  And then the 
usbhid driver.  And the usb serial drivers.  And so on...

This does not seem like the best solution to whatever problem you want 
to solve.

>  	.id_table =	usb_storage_usb_ids,
>  	.supports_autosuspend = 1,
>  	.soft_unbind =	1,

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/33bd0779-bfe7-4c87-8fe6-ea8455df3b6b%40rowland.harvard.edu.
