Return-Path: <usb-storage+bncBD6LRVPZ6YGRB6PTRHWAKGQEVIKV4HA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x747.google.com (mail-qk1-x747.google.com [IPv6:2607:f8b0:4864:20::747])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB06B6AA6
	for <lists+usb-storage@lfdr.de>; Wed, 18 Sep 2019 20:39:54 +0200 (CEST)
Received: by mail-qk1-x747.google.com with SMTP id h4sf1000849qkd.18
        for <lists+usb-storage@lfdr.de>; Wed, 18 Sep 2019 11:39:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568831993; cv=pass;
        d=google.com; s=arc-20160816;
        b=NXIBlnDiCI4MQ/0J1sutGn3eih+GIrY5kr0LmPK/qGpagxIhW+DreXuIklDRPlr5UU
         2RwPO0yJ5PSDcE54wx3+thW28/6I/6qpKqie9tqqiJWel/JlNINo7esLab1Dk58tXT1P
         w8MU5a26iU/ovZpnBRQwFSSrG0YaB5A1FZL8uwHmb7bJIJhgP5VFZwIgW/5w3u/nSjWi
         6SmX+NQmhpSdT6a16nkNy+8gaEl6edoySE7aIswpB/hu40ldObu4qiqFBvuZc63wN5hu
         YCuuqEP3ZqeFD2gK2DWVC3fWduKCz/zdNkrEtbRFuo1no6p+hmrLJNtLKhuv6Dh8cgo+
         Zlcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:in-reply-to
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=LWpZWwfQakgCOJ+RU+Y4xFmGAFHkkaKlpoge4OG6f4g=;
        b=T6Ay257wp5/LMW6oCk+I6EkUnVp9GbNN94MOB3LZ41cFbY7gO47fkZRoxzpvRHlg33
         +aTxy+rlukAMu400byrxm1JPPF+ECU2Zsnf1DgcJcrwYx4z6JxOInr02JQOdbhtzIIkS
         dip6fX/M/xazqONDopRWpXpQfitiBJzBZh3tDCFGvuw+jWioQkl0/Da1hLmIlmPcS4CK
         J1nEkB7f3YbVFYNwGyd8akiDsEFf3UPamseCeoj/g/HToosULTG04ty4lsX6gT4OdoI3
         oIZ2EpKXeKvnhItmgdBRw7oL8XVycUkQOZI/Zn/EOPFSIVJgNsMawFEI1mltJ0ht5JuQ
         DQEg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5d89addc@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d89addc@rowland.harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LWpZWwfQakgCOJ+RU+Y4xFmGAFHkkaKlpoge4OG6f4g=;
        b=jL8zPOmn3vkUkD3KggxNJYoFd6/MhrVicbymNOoz4OTrcaPaM7mSxh8usGmXU8WYmz
         b8gsCUpP6PFadFA3bkz2C80tJpWG/UfFwKU1jDQLzcuHsyU+k7e6qPyGhKIQqJueMzqm
         ANWF2B8REBejiPJBFdgCSWhDm5lSBZ0iHhX1I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LWpZWwfQakgCOJ+RU+Y4xFmGAFHkkaKlpoge4OG6f4g=;
        b=fX72mOpL4nw5/skMlcmXBnW1wxSq2RJXhiZ02AGn3QYBtv14WHgd6A3FzhaF3WYfIh
         M7RU1qNkUTyB6D+YzxUfE81Wdr935tmM6uk55Yk8U8YVCyK9SjrxbKiPYttakbyMM973
         8CsTSHyjtlh9l61EgRDXrkNv1m+kYxzFKT+oMGLfZBHaem1X2Y2ieE0U1Ja7fi0ekFlm
         XRJup8nx/Mz3Y67H3a1vtTcZTR6KMW0i0Vk1HBgFeGcnN6ND+ZLsQ0CMhW5u7ymYA7fE
         /Jvb8bYl1w2yvrM9/c4gKXs24BRNjyrnKRy0CueMuTggZKBHimH8P4FHov/W6IQYsYwB
         crfg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAV3MzihwR3UqQvzWAbeAOFxKndFYR6YIqdB3rCbs+rE8ViAzjaG
	8q3t+onKUZoX6lC4Col8Olxdog==
X-Google-Smtp-Source: APXvYqxsC58nE2nj0vC/GeWQdvXcvKJhp081n9KLRVWGF5cn1U6xX0jTvs6fiEnaAzFq6Lm4JJ4F6g==
X-Received: by 2002:a05:620a:1136:: with SMTP id p22mr5527951qkk.287.1568831993515;
        Wed, 18 Sep 2019 11:39:53 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:a209:: with SMTP id l9ls238030qke.14.gmail; Wed, 18 Sep
 2019 11:39:53 -0700 (PDT)
X-Received: by 2002:a37:4952:: with SMTP id w79mr5585696qka.59.1568831993221;
        Wed, 18 Sep 2019 11:39:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568831993; cv=none;
        d=google.com; s=arc-20160816;
        b=X3AvRA1I3F8oW1Xi1ZnZUjeZX7BtWOSGelMxPqGn5ci6VETqPn+xDv1OIoDFcPUreA
         FlOvZL6JVSBB2jQlsum8SNkgOqVkMJ6V4elQdYrL9Ae8SVSRnM6oGkhdu0WscdxoSNgZ
         ZOOGR27pZ6kD8NVkdS2wuuzQMm2NrAWBNc5088CU7SB1i5S82GkbtVXlt+lNCTdtKgOs
         BgkrRVUJrZ/JOfKQd2mcFS5tgC0HDV3elN65jOvC0nwtp9rAqQ4AKklCvBzufl/LT1JW
         fvXFnM/UL9jUieebmHSCkFI6Fq7aPGXHX4FdSGt6l6yXFKiu5z634hiWX8AujNAcfYeK
         8M1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:in-reply-to:subject:cc:to:from:date;
        bh=LWpZWwfQakgCOJ+RU+Y4xFmGAFHkkaKlpoge4OG6f4g=;
        b=OLR3GEQWlw0wFYYfRzaejnrvjX4DW3ZTv5hVFLr4+NKmrbxZfDbXyGj4ev10braQkz
         /xd95iTz1zEECcKZbskhBT4AyKG/H0nHba+t8+4lFv6JZ4cMM3zstW5+0i5GBWCX0Co2
         n4TwlRNiq30/ER5T2CwKyyUH8C+OjQY5MfsbRHGVsXDOWlFkoLCUtv+zKar+qfcKyWp1
         OBsExqVZKwDBUUgP0XX2Wuo0MFPHm8lcpP1H3/mj7HwdaaWnBR6ew9b/hV5jYKLQ+w9p
         dvKwU9iyreeOYNFg+l/nSc26NtieU6WBDMJqpVAUPy5dwSzWKD/pYhCFVCJWLJ4Kwfa/
         jQIg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5d89addc@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d89addc@rowland.harvard.edu
Received: from iolanthe.rowland.org (iolanthe.rowland.org. [192.131.102.54])
        by mx.google.com with SMTP id n43si4415286qvd.58.2019.09.18.11.39.53
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 18 Sep 2019 11:39:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5d89addc@rowland.harvard.edu designates 192.131.102.54 as permitted sender) client-ip=192.131.102.54;
Received: (qmail 7207 invoked by uid 2102); 18 Sep 2019 14:39:52 -0400
Received: from localhost (sendmail-bs@127.0.0.1)
  by localhost with SMTP; 18 Sep 2019 14:39:52 -0400
Date: Wed, 18 Sep 2019 14:39:52 -0400 (EDT)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@iolanthe.rowland.org
To: Matthias Maennich <maennich@google.com>
cc: linux-kernel@vger.kernel.org,  <kernel-team@android.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
     <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH v2] usb-storage: SCSI glue: use pr_fmt and pr_err
In-Reply-To: <20190918175304.219849-1-maennich@google.com>
Message-ID: <Pine.LNX.4.44L0.1909181438440.1507-100000@iolanthe.rowland.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5d89addc@rowland.harvard.edu designates 192.131.102.54 as
 permitted sender) smtp.mailfrom=stern+5d89addc@rowland.harvard.edu
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

On Wed, 18 Sep 2019, Matthias Maennich wrote:

> Follow common practice and retire printk(KERN_ERR ...) in favor of
> pr_fmt and dev_err().
> 
> Cc: Alan Stern <stern@rowland.harvard.edu>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: usb-storage@lists.one-eyed-alien.net
> Signed-off-by: Matthias Maennich <maennich@google.com>
> ---
>  drivers/usb/storage/scsiglue.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
> index 6737fab94959..afc4e3221369 100644
> --- a/drivers/usb/storage/scsiglue.c
> +++ b/drivers/usb/storage/scsiglue.c
> @@ -28,6 +28,8 @@
>   * status of a command.
>   */
>  
> +#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> +

What's this here for?

Alan Stern

>  #include <linux/blkdev.h>
>  #include <linux/dma-mapping.h>
>  #include <linux/module.h>
> @@ -379,8 +381,8 @@ static int queuecommand_lck(struct scsi_cmnd *srb,
>  
>  	/* check for state-transition errors */
>  	if (us->srb != NULL) {
> -		printk(KERN_ERR "usb-storage: Error in %s: us->srb = %p\n",
> -			__func__, us->srb);
> +		dev_err(&us->pusb_intf->dev,
> +			"Error in %s: us->srb = %p\n", __func__, us->srb);
>  		return SCSI_MLQUEUE_HOST_BUSY;
>  	}
>  
> 


