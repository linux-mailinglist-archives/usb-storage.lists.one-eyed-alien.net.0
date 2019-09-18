Return-Path: <usb-storage+bncBD6LRVPZ6YGRBKUDRHWAKGQEHZLJ5TI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x745.google.com (mail-qk1-x745.google.com [IPv6:2607:f8b0:4864:20::745])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B88CB6643
	for <lists+usb-storage@lfdr.de>; Wed, 18 Sep 2019 16:39:40 +0200 (CEST)
Received: by mail-qk1-x745.google.com with SMTP id s3sf192677qkd.6
        for <lists+usb-storage@lfdr.de>; Wed, 18 Sep 2019 07:39:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568817578; cv=pass;
        d=google.com; s=arc-20160816;
        b=vgXeBrrlHBbsJNdZ5QKlTaF8JnwFdJDrpRhyxtqgLQQL7jW94BflVVtor/+X2iRm4S
         eNaXTzM/M2eXx1C2rIpPgWjjLmB8t82GRsbOHbwI+6xBlqk/R0Au0ZQZULleQzuTd06R
         rQZHgkhre1iNe72qndY8r05iwOqi1bMV4lvcF4xUFJC/usBFUKMnOBdEQDc5BT0H35AA
         r7wBHA1vVUv7skBzONp83QpJrHyu3Db65xWhgLysHjZo03wyPGALlNKbLdk9kwKdTAFa
         +ldlRg6ixsfgZJ8LOgQpsB9FI953Xo32t1J6WElOHmWnJhRo6VUpUi6BKBrmYEkK7Ovk
         SJZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:in-reply-to
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=XlyOo8I32+Y5bTJCPQQ3/53HBQxY26gPANK1iS824Ks=;
        b=fobuyMKI5rslJBxpLAqp+GoL0D5YmNqWsrgjhYZOqRFnyrkiUKEZtfvZCQmfZv/qOS
         i9crRpfHqwS4S5lozXCzKnEmmfgVkG3XIgrylGpaeCplhiGEg72oTX8fDiI6sxdpn6Dm
         3L3oE6lRgBfP872TQI+V/lxqXlKjwsS5N+n2UaequYZwc2g958HkpFdgJFsyfslbyA8F
         Fl97SAbc8/cjphXCZo1D03E95hQ75zjd0y2DuJimjVIdzKVMJYMElAL31sBWhnYQRaX6
         zcHQttrLDxXdTOTLy4QYTY3iixNm+gu1oeqqY+iSTOZ5l41LXu5izyacVKe3okViKqoE
         mh8A==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5d89addc@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d89addc@rowland.harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XlyOo8I32+Y5bTJCPQQ3/53HBQxY26gPANK1iS824Ks=;
        b=aD9JIc/L364m8Cl1nbqIvHa6l9lhGPB8n+bqVrzOV6xD9tinMvRSSNcpEYjguEvzXk
         QHQD0gtSrQ3eoZCeZ1mJQZiTcyxXcsy9bPkPfZnsxvHnZ61GZR+p08//Pb5LCBIPadLw
         RCI//IhWfZRX1MaEMU+7Ofjl4TbqOHp3qd9v4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XlyOo8I32+Y5bTJCPQQ3/53HBQxY26gPANK1iS824Ks=;
        b=jlehEfHrDD42Gc3OVimWUvOjeJcRzX3UmhRvG70/A1bkLsBSujQEoorcvxM8RjRVG2
         ktZaI7KiZ048I6917VEnSIFNh3ziBtf1oHR1KZpd6Y+bvMtRocfKwmnp+7OM5dgEeT/R
         ZKUVfCEWvSONI+zYsc6Vq9W7ClH4beHDYdPlYLCAbni0nc1aBvlfeLbnH/eEGTFpFnHx
         5E2bDV5HKZeHe7DLicMBnaqFfm+RAyREam2j4SE6yTBvlW1OO8sTAeozdXeFJh4XREBY
         21DeEasqeaqMDS95KDObPJ1yPyzKxGKGD4hkfMFO/DloJC8jvVShZjjoM1aL5eQhoW7k
         3uhQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWmQHDfWXY7xmKe8V9jXsixZh6Vr/+ll0E4FBM4bbvSMGVNjvHh
	ij9HlQqqDnYvKN29T8oerd+LvQ==
X-Google-Smtp-Source: APXvYqzSnPFMmKZxu4zpkVcJtgg5or9FF8X+2JpmbH/SIe+AoWsQ4FlgFR3HBivN3Sc1Mg24uv6/8w==
X-Received: by 2002:a0c:add6:: with SMTP id x22mr3548330qvc.203.1568817578642;
        Wed, 18 Sep 2019 07:39:38 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aed:3f5a:: with SMTP id q26ls67748qtf.13.gmail; Wed, 18 Sep
 2019 07:39:38 -0700 (PDT)
X-Received: by 2002:ac8:2afb:: with SMTP id c56mr4445108qta.222.1568817578141;
        Wed, 18 Sep 2019 07:39:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568817578; cv=none;
        d=google.com; s=arc-20160816;
        b=FBQXCKR4EyC2hF/LoyqVpytijsiFb15ixdj8SU5wxlE2bwBrOUwlzatYFSs67RpdBr
         J0zvJUtMCJAhf/62n7+gEl8hljWEXaKG2nsF20r4BzI9WmUqgcZFZhirj1zGUyPWkpOf
         7kG5+MBr+rGFWohQGEY1crgRDvCvFCYYEGnnTwxaU/z6bhhSXKUw4yuqaKmwWwu2en4e
         3b/wyo+wcMVRbh16J+Dt01lSollmyxUw00N09hns0jRJC2V1/Agi9/Z0RRTLQg/6XZ1l
         bj1jcALqfj9wjHgeEu2YbNAe9VfAay3nTYCNPefYkZ+zep5u4GahKZDtQB9WEHxnKyrK
         ittA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:in-reply-to:subject:cc:to:from:date;
        bh=XlyOo8I32+Y5bTJCPQQ3/53HBQxY26gPANK1iS824Ks=;
        b=Yoe5EdE63oz+oSzNh7FFkOmK3Mbt1GfkuqBprocsA68RqpSIIGNOe+MnOTwE/ymcUH
         M6nvIozJ0xJmCvfw4lzqefKAZUT6KuqoPX9BfTJhZmd1Ou4Q3ZCWfDG1FLZ8MIr/S7YJ
         VepdQz6aSgfM16FyNtAYhCv3WMkqhmZeZTPIQR+0Ke9yXunUq2vaHt0D1n7aqvZTMpt+
         OvsYfR6viKJH9bBq+Z29RYj4k495IZeSrrOyufZ06cvl2lYYmCNgP7Y5U3NGZ/ujmzlB
         hqlgdrMGO2oUvupeAFzJlh2GDkuU1RNEsU80c0ypzILnsOti6fGiQDKLykNw7kNIe5O/
         ixWg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5d89addc@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d89addc@rowland.harvard.edu
Received: from iolanthe.rowland.org (iolanthe.rowland.org. [192.131.102.54])
        by mx.google.com with SMTP id k84si3815197qke.198.2019.09.18.07.39.38
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 18 Sep 2019 07:39:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5d89addc@rowland.harvard.edu designates 192.131.102.54 as permitted sender) client-ip=192.131.102.54;
Received: (qmail 3498 invoked by uid 2102); 18 Sep 2019 10:39:37 -0400
Received: from localhost (sendmail-bs@127.0.0.1)
  by localhost with SMTP; 18 Sep 2019 10:39:37 -0400
Date: Wed, 18 Sep 2019 10:39:37 -0400 (EDT)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@iolanthe.rowland.org
To: Matthias Maennich <maennich@google.com>
cc: linux-kernel@vger.kernel.org,  <kernel-team@android.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
     <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH] usb-storage: SCSI glue: use pr_fmt and pr_err
In-Reply-To: <20190917231031.81341-1-maennich@google.com>
Message-ID: <Pine.LNX.4.44L0.1909181036090.1507-100000@iolanthe.rowland.org>
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
> pr_fmt and pr_err.

As long as you're changing this, why not change it to dev_err() 
instead?  That would be a lot more useful.

> Cc: Alan Stern <stern@rowland.harvard.edu>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: usb-storage@lists.one-eyed-alien.net
> Signed-off-by: Matthias Maennich <maennich@google.com>
> ---
>  drivers/usb/storage/scsiglue.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
> index 6737fab94959..0b6fa225b352 100644
> --- a/drivers/usb/storage/scsiglue.c
> +++ b/drivers/usb/storage/scsiglue.c
> @@ -28,6 +28,8 @@
>   * status of a command.
>   */
>  
> +#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> +
>  #include <linux/blkdev.h>
>  #include <linux/dma-mapping.h>
>  #include <linux/module.h>
> @@ -379,8 +381,7 @@ static int queuecommand_lck(struct scsi_cmnd *srb,
>  
>  	/* check for state-transition errors */
>  	if (us->srb != NULL) {
> -		printk(KERN_ERR "usb-storage: Error in %s: us->srb = %p\n",
> -			__func__, us->srb);
> +		pr_err("Error in %s: us->srb = %p\n", __func__, us->srb);
>  		return SCSI_MLQUEUE_HOST_BUSY;
>  	}

		dev_err(&us->pusb_intf->dev, "Error in ...

Alan Stern

