Return-Path: <usb-storage+bncBD6LRVPZ6YGRBA4CXOMAMGQE3RMYWJI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id DFEFC5A73B8
	for <lists+usb-storage@lfdr.de>; Wed, 31 Aug 2022 04:01:40 +0200 (CEST)
Received: by mail-qt1-x845.google.com with SMTP id i19-20020ac85e53000000b00342f05b902csf10099484qtx.7
        for <lists+usb-storage@lfdr.de>; Tue, 30 Aug 2022 19:01:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661911299; cv=pass;
        d=google.com; s=arc-20160816;
        b=wvHK39I6pm0i8oFrM5Qoxclm6TIPNP1S1Ad2iXu/3s/+7jdEe9zGfsqlZyJD4kxqkl
         8Gu2xoxULFHE4M4eKtSY/PgkUCtH+jsUFT8gXK/Jf5301ZAdvjA1bVQubQcXXe7q82I3
         80wlNcX5vZuNqDDjUaN+brLL4pCnPNY+stsW+3x1ff8+BV5lnjbXEKwTXTZbTRzD/LPB
         1AfD4dFEIvez5szeBT707sdaDKEUdbsau4uq3UWI5VDgtEpjqwQC5Ou9GtqN8YDXsPo+
         qE//0AfjBQWisBdjVgTkfeOjdTyuVGvvf9vRNOiRFhZf1o+zhh7EW4NigoPISBAgWXPw
         Wcug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zADeaejAuU9dWY/79bBnyJ+i0IPU7ib8lBBgAmOGgno=;
        b=CEpHjL+WF3pA9Opf0QNYKLlpOdVA85r3bqd3bUA5p6nmxB9XrQ6QpcBkI9P1k4DtjW
         CDR8K2asRul/8G5dlYtIl6rxxU2cplTts+bO5R5KsDIG1g7mU52FqQVq4L56SpaJOt71
         4h6PK2LnYe0Zr3dXY4GazLU62pUhBt/Jc/+Mi2wciBpNw9x3f4BaGf//LKeYqSnDwMtG
         mJIGUhzPpmvS6bd2/LmbbYAq9Augr4yCZmSWeC5spmPuPqNXX6CSa4jC799HF02BoY6i
         vbYDA2DuxcAX9Ld22c8Ld3SkWv1Pz3bSisjy+kBfSRocIxp90r5mWL4uJ997xUEHkZ/X
         2Dzw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6306f718@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc;
        bh=zADeaejAuU9dWY/79bBnyJ+i0IPU7ib8lBBgAmOGgno=;
        b=jzrF8SzjK89JYP1eaQOMBaKeUZdsqC80JAkx8QBxryfim53lHa7D6gOFybPrbktn2E
         VXTanVsugKbRg82s+w7FSvQQKaozZGGqpVw1jJHZUNPowuI71vdeltmktvh0ycEJdgJs
         Dim1K/rrX/1uA66/6uorUfoyR2g2lEVXq2zbk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc;
        bh=zADeaejAuU9dWY/79bBnyJ+i0IPU7ib8lBBgAmOGgno=;
        b=lStVPUZey8n98w5vKLVgpl9Vy8BOexNSTnkC4bl04EXQQsrT8WR1PGDlT+k3i7vq6p
         G5ZjyfuelY8Rx8JxjmKJ9/Tt6ckHBJohlfG89lTrqdYCDKc++V4AkSp/v7Q9DZOQBZKN
         BphEd8l7whwq74TBz6ChFx2/FIpENcQQEJT7Ql/9Zrd+eoS8K9FUuyLRxVhv89VBwsAj
         YuA4CXO8ymFvqMJWZEzQOyZMtGzkLAXiZoxVUBfpd7l5YUc7x1+Wm0wRkpRoN2MN6vLO
         QkTipwqJzF9T1sNW8MZ/DPj+T9UVJwI/uetMmDPRwS+ts6xWvPTaM5x03Bj6L6+H3t+q
         kw1Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo1akAs9KqUTdxmbcCJrcDqsoWLd45RyDla7cNJhjW4ZmzgVLKgM
	5L/Vxjh27WM2re9qBbIPtXQ1GA==
X-Google-Smtp-Source: AA6agR4zyxVN0w+Cb0njpSKLYdOd108fLXPlKfChbI537BXAVwP5m2gWLdRV0uVa6aE4FmLYvzM3Sg==
X-Received: by 2002:a05:6214:3013:b0:496:dbfa:ab0f with SMTP id ke19-20020a056214301300b00496dbfaab0fmr17444810qvb.118.1661911299701;
        Tue, 30 Aug 2022 19:01:39 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:1191:0:b0:344:662d:27b6 with SMTP id d17-20020ac81191000000b00344662d27b6ls7540592qtj.8.-pod-prod-gmail;
 Tue, 30 Aug 2022 19:01:39 -0700 (PDT)
X-Received: by 2002:ac8:7f93:0:b0:344:ad82:aee7 with SMTP id z19-20020ac87f93000000b00344ad82aee7mr17272862qtj.332.1661911299038;
        Tue, 30 Aug 2022 19:01:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661911299; cv=none;
        d=google.com; s=arc-20160816;
        b=VsbXpLJy/qLpatoVfNAs2WTdbPqsoMCQyCuCH8tjINgaPrTPR7BjfaFx4V6HLMdgPx
         8I1WV5XmS86h5/7BbRbbUuRkHuwJ2uv+sYpUNLAL1CbHx7NjSJxndXpXNsZdjN52xOXw
         w3Mn8hvhjIMwI500F9QZlmDQTYuIymzykhdz4JfNcMw5lJtfiKnuuNLa/jW9rx82NKpO
         fDAbBD010NMjjKuOVXFhKgCwbsNgZauKuwakjeU2gTacNXjPyrubAjyowNmBN3qZi/tr
         nYPB+Nng7aYyZxUd5jKVgRWARDY6oHEjk7wunyfO7IkdKe07+3dgQvm5mt2ejFo2hiE8
         4OJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=3GbRwYEYfcoPEIHf40Ro09B204ZkzRhzdivocTFe43w=;
        b=cqSes4yE0BLLQZbmkYfya9UCYUYWFY/GAwdINga5MwQS06SWoW+OQfCXk2lKnBfyc3
         ODLVwptocbjUU2GKSJu4NKvxHIixdnXxz/yHkXKC9ieoUIv8ItkCPENCGzkUxV7K+hBL
         eGM4jd9W1T81ZJtj4bLXXWwMRatp6sNkJwGNAatXduXSs5ePw7r4ggihs7ZAmvVemFzL
         bQSS0f5ptdo90MolM2LocV1fP41+SRSoPO1zStxVsraiGr1mVrwW9GktPuuwOi4Cnlrn
         XLbzEgboF06YEPURw4kITqagYd/A7Xnswi4mvPG185eLwxGNUnsMC6ANF9/p4x2VDYk+
         R1Xw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6306f718@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id lp3-20020a056214590300b00496e917d95dsi5896283qvb.58.2022.08.30.19.01.38
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 30 Aug 2022 19:01:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 176774 invoked by uid 1000); 30 Aug 2022 22:01:38 -0400
Date: Tue, 30 Aug 2022 22:01:38 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Hu Xiaoying <huxiaoying@kylinos.cn>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH v4] usb: Improves USB2.0 write performance.
Message-ID: <Yw7BAlRhuvDNY2D/@rowland.harvard.edu>
References: <20220831015624.1119578-1-huxiaoying@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220831015624.1119578-1-huxiaoying@kylinos.cn>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+6306f718@netrider.rowland.org
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

On Wed, Aug 31, 2022 at 09:56:24AM +0800, Hu Xiaoying wrote:
> USB external storage device(0x0b05:1932), use gnome-disk-utility tools
> to test usb write  < 30MB/s.
> if does not to load module of uas for this device, can increase the
> write speed from 20MB/s to >40MB/s.
> 
> Signed-off-by: Hu Xiaoying <huxiaoying@kylinos.cn>
> ---

Acked-by: Alan Stern <stern@rowland.harvard.edu>

> change for v4
>  - Update two email addresses to be the same.
> change for v3
>  - Does not send html mail to the mailing lists.
>  - Update patch, which sorted by vendor ID and product ID.
>  - Modify discription, correct some english words.
> change for v2
>  - Update discription for patch.
> ---
>  drivers/usb/storage/unusual_uas.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index 4051c8cd0cd8..23ab3b048d9b 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -62,6 +62,13 @@ UNUSUAL_DEV(0x0984, 0x0301, 0x0128, 0x0128,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_IGNORE_UAS),
>  
> +/* Reported-by: Tom Hu <huxiaoying@kylinos.cn> */
> +UNUSUAL_DEV(0x0b05, 0x1932, 0x0000, 0x9999,
> +		"ASUS",
> +		"External HDD",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_IGNORE_UAS),
> +
>  /* Reported-by: David Webb <djw@noc.ac.uk> */
>  UNUSUAL_DEV(0x0bc2, 0x331a, 0x0000, 0x9999,
>  		"Seagate",
> -- 
> 2.25.1
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Yw7BAlRhuvDNY2D/%40rowland.harvard.edu.
