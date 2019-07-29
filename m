Return-Path: <usb-storage+bncBD6LRVPZ6YGRBNXQ7PUQKGQE3R5TFPA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id CA79C78D14
	for <lists+usb-storage@lfdr.de>; Mon, 29 Jul 2019 15:44:23 +0200 (CEST)
Received: by mail-qt1-x846.google.com with SMTP id r58sf55155703qtb.5
        for <lists+usb-storage@lfdr.de>; Mon, 29 Jul 2019 06:44:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564407863; cv=pass;
        d=google.com; s=arc-20160816;
        b=D4mqqTNXiKhtb2pa8hQFFjZXV0A5IkcdK9pwaux9+9veKofbzG4DwdSGDA0qSRK0qW
         a+jO5NE7FbJ/h+IK6FGCYROa6dxWi7YHzVAfVl6w01CW2uGy/FRTB/3VwVFnSqhBR6tW
         0kvEJ/CNCGR9lWzhO5nbVPhVedFIvzGEnL8UP9PCAw7Srn/IfUtxuymoR2wWglEeXlUb
         hMy812FthVVJmce+GaQYNwoOd4NEsc8zItpPnKTDvVbAX+nR6ni/Ui7TJXg+YKstyWdy
         zCfS219z/56Nd3KsCIgplL2bohw3n6E4Ycilofez8P8pIEtzhLwqcGQi1p2WtTxUpJux
         7IJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:in-reply-to
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=r096IGyDbuxfBVd0Z9dik7JTTwA3yJhb4D9T9QLWkCI=;
        b=U7iIR0vulV5O9hlmbzL5lWPXx0htp3FYrUYtD/5wuL3D/Qf6gS5CvGxSzrlRqeqNRw
         66DseV2RMC9SFF6SzqDwzTJYzKOjFrIySjSh8y1C22pwbgZtwICpjXm1tkrdehFMFtLU
         G3xlT/QSL+/edwRql/4lsyfIsgTDrZX00d8Gp8cOVyQR9/1TPzOnBFB0aO26EFgLc3u7
         IamDQH0mqbylLbe55etmW3pJ4OkXf9RFdmFEYpWoCLvWDelt9mh4R5/ZdOM4yvDAYZ8Y
         y3a5pRSECKKi8tghbcydecFj09ayoCwhHTCzfNJaT9NecG2/+yvstL4HJWrLipBbmsyb
         9pFg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5d21970a@rowland.harvard.edu designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5d21970a@rowland.harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r096IGyDbuxfBVd0Z9dik7JTTwA3yJhb4D9T9QLWkCI=;
        b=NPk5kgW9ehfGpTgi7Mp5qn0S6jKvS5i6F8W6YJ3t02Fj7CfKR/HQRIpwff5VzTDi+l
         Ten6FAqYAJNyWwCCptp0c3OKrjYCJiJRz41NJ06YAPZ8LjGNnb+32H2gaIX/7oEm2nyB
         D3JUGY4lFbGAkvKKg3jZmpoXOUsGCiBZcBPoI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r096IGyDbuxfBVd0Z9dik7JTTwA3yJhb4D9T9QLWkCI=;
        b=UJlo+wi4Kp1RrCK0LlBUi5u22DfOnpoLX9Brvs/oB8O6hGUvlTnpKlNM30JxH6XBzV
         aLitdMydPQum9i07NGOgzqaDfDjH+IHSxjGIowX7+RJS6cmmrJgeerSB+oVBVy/U9+fH
         HXJ8pKi0kLl0Io1K9hH9gDXfqkAzOTeobFm7ZvgZSuctqxjvcCIRpcrR097Ufu9Y6D76
         XIrhdqNqFtmGkk0DTGTkprToiOBXKF5BKuXzD25MYKiJ3YW7B/GIGc6vNeyHqP3qgR2e
         15BSbcNN3tDB7u843D8k+MYtlt4HTYq6DesF09FIKm3HDlJQGsaF0IKk2OtLNZwC73nC
         g7Hg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUrHAScq3ShAfX0oDuypVFQv8kO9tnLDAuBA7jWlq+2UnhaQewP
	EJ/KO5bhNkhsW1ZjFpqwenA=
X-Google-Smtp-Source: APXvYqwQj5GRCCENQH10uDXfVTTmfedLR6t4hUdm9VsFrrhw7bDib6bGSM8k3MBbgf9uhGftH5FPEg==
X-Received: by 2002:a0c:99dd:: with SMTP id y29mr79057620qve.61.1564407862817;
        Mon, 29 Jul 2019 06:44:22 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:228c:: with SMTP id f12ls2317788qta.9.gmail; Mon, 29 Jul
 2019 06:44:22 -0700 (PDT)
X-Received: by 2002:aed:21c6:: with SMTP id m6mr78962601qtc.173.1564407862366;
        Mon, 29 Jul 2019 06:44:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564407862; cv=none;
        d=google.com; s=arc-20160816;
        b=Rw9EFvpJm6bGJB57qgOP8ygD+nX6fy4BcKCfi76gYImTzr0WDYEBsH2MvNj2v7boZ/
         ap9GBsj7KAUoWl966kFaviQPJv3Bc6rn82/pYa5T55IPXo4mJZ/d7FiKlpi30aoA2vQW
         tbcKTzM6z/yBJDrXWtmqdctUtMD3oQAMU+eZdYcZYLh85Hu82gKe184GgxRkPnXerkaB
         O0dr/J6oMythZ35vslOATWRIWiKSAmmjZrEHjhy17oIA9tSICYDq39yXxOvjURf3rGGf
         Ki5ufg30uU5V1conPpodjB4Dr1ezxyxoB084tDkLbNdue1oUqt9hbtTtsUCoMqASM8PO
         DFmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:in-reply-to:subject:cc:to:from:date;
        bh=r096IGyDbuxfBVd0Z9dik7JTTwA3yJhb4D9T9QLWkCI=;
        b=kMHKjQTI3KAu20JRaMEQqGTmbVRHpUnGlW1UWltS6dbZQwj+HV2s4x7RmlrCcvCnm8
         Wabe2M30zhue61u8uJnqpqUipFgvB42b8kaIT+mxe9btAcffrA4QkG0ovRBPeVdlslM1
         2kVoyYD2Q6A2KTy6sGkRL3fMlBUSD1w5cW93v5swrGb921Cu3UwE3v/Z+SpyVeGmzBLv
         uogOuXiilillYl2YTOEnligXbzAuADJ6ST8V9FLU4Z0U0qZgwpMPjdRXzUia1oXBxalC
         cDjgbIULTiF3qzCU7Js9B+A8MnZ30l/MjZvhEdW0i0O/TW5cTVv5kLycwKVp3owa80m7
         WMuw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5d21970a@rowland.harvard.edu designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5d21970a@rowland.harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id h71si36976877qke.354.2019.07.29.06.44.22
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 29 Jul 2019 06:44:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5d21970a@rowland.harvard.edu designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 23760 invoked by uid 500); 29 Jul 2019 09:44:21 -0400
Received: from localhost (sendmail-bs@127.0.0.1)
  by localhost with SMTP; 29 Jul 2019 09:44:21 -0400
Date: Mon, 29 Jul 2019 09:44:21 -0400 (EDT)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@netrider.rowland.org
To: Jia-Ju Bai <baijiaju1990@gmail.com>
cc: gregkh@linuxfoundation.org, USB list <linux-usb@vger.kernel.org>, 
    USB Storage list <usb-storage@lists.one-eyed-alien.net>, 
    Kernel development list <linux-kernel@vger.kernel.org>
Subject: [usb-storage] Re: [PATCH v2] usb: storage: sddr55: Fix a possible
 null-pointer dereference in sddr55_transport()
In-Reply-To: <20190729114936.6103-1-baijiaju1990@gmail.com>
Message-ID: <Pine.LNX.4.44L0.1907290939250.22244-100000@netrider.rowland.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5d21970a@rowland.harvard.edu designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+5d21970a@rowland.harvard.edu
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

On Mon, 29 Jul 2019, Jia-Ju Bai wrote:

> In sddr55_transport(), there is an if statement on line 836 to check
> whether info->lba_to_pba is NULL:
>     if (info->lba_to_pba == NULL || ...)
> 
> When info->lba_to_pba is NULL, it is used on line 948:
>     pba = info->lba_to_pba[lba];
> 
> Thus, a possible null-pointer dereference may occur.
> 
> To fix this bug, info->lba_to_pba is checked before being used.
> 
> This bug is found by a static analysis tool STCheck written by us.

This is not the right way to fix the bug.

The code already contains a test on line 938:

		if (lba >= info->max_log_blks) {

If this test fails, the driver doesn't try to dereference 
info->lba_to_pba.

The problem is that info->max_log_blks may be set even though 
info->lba_to_pba is NULL, because the READ_CAPACITY case in 
sddr55_transport() doesn't check the return code from 
sddr55_read_map().  _That_ is what needs to be fixed.

Alan Stern

> Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
> ---
> v2:
> * Avoid uninitialized access of pba.
>   Thank Oliver for helpful advice.
> 
> ---
>  drivers/usb/storage/sddr55.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/storage/sddr55.c b/drivers/usb/storage/sddr55.c
> index b8527c55335b..d23aff16091e 100644
> --- a/drivers/usb/storage/sddr55.c
> +++ b/drivers/usb/storage/sddr55.c
> @@ -945,7 +945,7 @@ static int sddr55_transport(struct scsi_cmnd *srb, struct us_data *us)
>  			return USB_STOR_TRANSPORT_FAILED;
>  		}
>  
> -		pba = info->lba_to_pba[lba];
> +		pba = info->lba_to_pba ? info->lba_to_pba[lba] : 0;
>  
>  		if (srb->cmnd[0] == WRITE_10) {
>  			usb_stor_dbg(us, "WRITE_10: write block %04X (LBA %04X) page %01X pages %d\n",
> 

