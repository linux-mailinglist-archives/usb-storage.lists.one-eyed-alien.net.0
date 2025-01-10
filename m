Return-Path: <usb-storage+bncBDR5N7WPRQGRB2O6QS6AMGQEGXJ3ONA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x146.google.com (mail-il1-x146.google.com [IPv6:2607:f8b0:4864:20::146])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ECA3A09380
	for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 15:32:11 +0100 (CET)
Received: by mail-il1-x146.google.com with SMTP id e9e14a558f8ab-3a7d85ab308sf16765245ab.3
        for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 06:32:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736519530; cv=pass;
        d=google.com; s=arc-20240605;
        b=icjb+w0mBFtO1+N7L2tkANX4Hcr/OPyKtr2BHdkEhL2IvmBVKa1842idPwx71heRjd
         dKcb2ojAi0OUKISzmhefSbY5xMVJ6VEi++CjAodOTKeNmQtlmKPDL8P0/aNkvxhafOhI
         wGz+gwSIrFY5FtoSfRABvNM29CgAjCIk9Pz0nEXRQxenY99WIYijQGlmynrOcBM7g1sE
         Ug6AxeTXDVJTmT614m4AF5yh51fUZa4/OOdDAosS5I8AcKw4lgLVn7C2OFOmfz3ycTsq
         n999siIo1+S3oYo/PmLrdzohjWzsjPvfLTkTxq+kiSjMjOaIZwH86ZqxueZanFDjZ1Gp
         FxrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:date:message-id
         :subject:references:in-reply-to:cc:to:from:sender:dkim-signature;
        bh=jcMKuu3Vu69DZ9Q4Z9NdZWt+YiHhDkzDmFo/tjNofF0=;
        fh=YTOb6Nj6EkZOmkfCEweM69rdoRKsmXUiz3pN186UL+M=;
        b=YtbJ54N7TN3P+/fX8eFBHtl65H4xuNIbG8k3O+XsGTZqpfz8ft8KOM/AJdPmWktstQ
         R7vvWfON/hjwjI+0tOZbLNYZWLCDpNvT6/764XPzAACZrJZNCW30KRqBdhNOlZRgqcJr
         /P1DpAo/xFyLW9iAOAz9rw8E7Uzqwv0XxLTnULWvori9IDjN/3+0OEQaKswgltUSjcg7
         pxwbQgN7U81p1IJ2AG1Cnp+A52dhW9WEVtspxFU6n7AreoCvCeXE1n3JtWI0RfGgqpjP
         u9ZIetfdiA+ROjkJDUmAy+1PFJ95pRppUt38eh+O9TMVO/ytssyjJsZOiqsgXirBTg8S
         pA5w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel-dk.20230601.gappssmtp.com header.s=20230601 header.b=cMTyWYO1;
       spf=pass (google.com: domain of axboe@kernel.dk designates 209.85.220.41 as permitted sender) smtp.mailfrom=axboe@kernel.dk;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736519530; x=1737124330; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:date:message-id:subject:references
         :in-reply-to:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jcMKuu3Vu69DZ9Q4Z9NdZWt+YiHhDkzDmFo/tjNofF0=;
        b=ixvynvnS1Iimi/UVxd2tHZzBT7NaOzcSwrcvkczZ0amhQWNNDQN7SqnqHR7+uIDs8f
         9jqwrdjCbp3gzCyxvDN5X2GB9Zk4eLc18FJziadY69KqdmUyADSE5iakpTDkHHQm0qIM
         pJnLp8Mhc0Fh1XAfQrdVShwoT8qs1LqSkk90I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736519530; x=1737124330;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :date:message-id:subject:references:in-reply-to:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jcMKuu3Vu69DZ9Q4Z9NdZWt+YiHhDkzDmFo/tjNofF0=;
        b=lSzBPtLzKjC4FRpqvoUgMo+BmuII7CXbUhl1CHnuWxOaXtZPe+oZwmEN6ol3iA5W68
         mGrJtSSiPjwOmki4EJiUJ3lg+0gurf30iqcW1dfHLYa953UHwStEALvO9PxOBy2HYE3L
         uHkyybcoaxakzO5nFvXQzhAalBFRB8o5CLGQn6bAZ2K+oOqdkqr/Ki1MjrKo+JvEcq6S
         AtPFKvQrb9bZ+zgDOUBp1LD6ut7B7E/TknJnZjcFl9THvfCCzcVfFsPF7Gm4aPqClcDT
         aFvIUqAdOoVSbVHi1aR/UDe4b86ewsAA5omTHPHEFEhgPkFvCuBTYyxrVzw9VervSd82
         3mkA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWOMhRVxBKFTgAdMyYOyLoc2mAkvhkJtCF4u2vjSOH9C134xWP/1hy4fK/z9MU+G13na7jNJw==@lfdr.de
X-Gm-Message-State: AOJu0Yyp5ihV1OKUZosJAnbMMQbHuzLzOqraX8Or8YZHCDfcy5QNECrS
	1yeYZi1MimnoLXQsZaPYA6+E69naIBSRXnJCEalKuE3TJOs3hFhdTL02ZLjsjhs=
X-Google-Smtp-Source: AGHT+IEnQd8dJB/NvCisuzJ2MbXe81wG9GHSdq8G24pQD+2hVYRRnuW4a6oMWydg3Prr1vUGi6BiRA==
X-Received: by 2002:a05:6e02:18cc:b0:3a7:1c73:e18e with SMTP id e9e14a558f8ab-3ce3a8e0a69mr90509695ab.21.1736519529894;
        Fri, 10 Jan 2025 06:32:09 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:3cc8:b0:3a8:1477:b10a with SMTP id
 e9e14a558f8ab-3ce473e197als10097195ab.0.-pod-prod-06-us; Fri, 10 Jan 2025
 06:32:09 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVpZr9mc5OiZ28q+LKJyE0536mvwAcnhPq6N9XkkgAb55w7/LnlTULEdm3RSuBkYdKO0Lig4VcVQJzosg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6602:418d:b0:84a:5201:570b with SMTP id ca18e2360f4ac-84cdfdd7ce6mr1043166739f.0.1736519528941;
        Fri, 10 Jan 2025 06:32:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736519528; cv=none;
        d=google.com; s=arc-20240605;
        b=O9yI7xWqnj09Ty2x9mSo788d8QlNmbkccDS0EgFMS7quzdTS8Yq2Ry6qiEL7fMomLv
         D2Y0A5ycDBzkgQnyf7G7ETO4qjZalWqK0sn0Bm4cQ9UbAOx5EMkrznF0L8sGaTdz/YmS
         tHDK1aNoEItROATzBov5T4us4qUH8RsIULsFn/RHaDcADifb4KgV4ZN5MgI2b6E6mYk9
         9bbOozeCmHLddjEvMs6rRaNyC7+N21h2r1hvsURs5bMFzqWSw16tjc4QZQ5L8ljSMxXX
         M409QBX5Jc9NuHCwoYP2iS+DOh2TMVqpMYRY1paF9Jots8+ERUtOv2ToqGh+S0LMjJIs
         4WmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:dkim-signature;
        bh=y/gcAKNkCa46sAJjco4x4Dt7XCwnmRxnbzpikJ5Iyr8=;
        fh=m1+gLztTRbZDq7viLEHVPbizguagkMzAm9O+PAHaWJs=;
        b=jOCYH96P/DLcxVYofmIaoehq5eCaYpvxbHlmA/NHKctf27JHgCx3pc06EBCaEA+UGt
         IVNOuxSfjxRf8iP865dyKltXFwIzBUOtJtIldmSZR59Rd6EpUTHZXHcRNim55b2pWN1o
         Tv3SOy27+vjFze2Kp1EwT/esFtCC784huM/M3OpY9depu2jqkK0NVsiQhw7pB2pg/myz
         bzKmeHAITeKKssLLH36m8vDx0gro+qoc8jPxO/RrFYchAVi6Z502REJOAbd/xl+V2rsn
         bOjCAMCcLcEdzWvJzrlcJ1nhzZWDe+ZZLG3NfLBArHXNNV6qYm1gMeDkImS4n03nnrZT
         sLhw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel-dk.20230601.gappssmtp.com header.s=20230601 header.b=cMTyWYO1;
       spf=pass (google.com: domain of axboe@kernel.dk designates 209.85.220.41 as permitted sender) smtp.mailfrom=axboe@kernel.dk;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id ca18e2360f4ac-84d4fbe9f52sor180212239f.7.2025.01.10.06.32.08
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 10 Jan 2025 06:32:08 -0800 (PST)
Received-SPF: pass (google.com: domain of axboe@kernel.dk designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVtB/VAVqfe+u2mzQbDADfFGGkQm2y2ug5GXoqitfRuMGfP1U/cTC/AXK5ltfoNEgYlBxK2n1JL4pF+vQ==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncubUkS0mEExyGHnYaIX9SPJz/WVvx+rtTVpsCElZqo87kmFJo887DOsrkH417h
	sKgkKMbptV6zr64AeDIoqL8OaU663pIaP7zZ1WbOPEtjFPjQ4CvOpu0TVWfCAiiulHAhaNl/Npr
	8z2yOUpih59EW8RfQHtp87CI9CNniSSOGoLmYO4PwVLqSuY+CHhNBJJiaXbcPgGGDpcwVxzkmbB
	eZgGxm25fYejIH4sbJPM1AzxmX6M8dZ6kscdYm6rDhUPfI=
X-Received: by 2002:a05:6602:3585:b0:84a:51e2:9f93 with SMTP id ca18e2360f4ac-84ce00c49f8mr971265339f.9.1736519528352;
        Fri, 10 Jan 2025 06:32:08 -0800 (PST)
Received: from [127.0.0.1] ([96.43.243.2])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-84d61fc84dasm91086539f.46.2025.01.10.06.32.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 06:32:07 -0800 (PST)
From: Jens Axboe <axboe@kernel.dk>
To: Christoph Hellwig <hch@lst.de>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>, 
 Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org, 
 linux-nvme@lists.infradead.org, nbd@other.debian.org, 
 linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
In-Reply-To: <20250110054726.1499538-1-hch@lst.de>
References: <20250110054726.1499538-1-hch@lst.de>
Subject: [usb-storage] Re: fix queue freeze and limit locking order v4
Message-Id: <173651952702.758529.3309066666363818120.b4-ty@kernel.dk>
Date: Fri, 10 Jan 2025 07:32:07 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Mailer: b4 0.14.3-dev-14bd6
X-Original-Sender: axboe@kernel.dk
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel-dk.20230601.gappssmtp.com header.s=20230601
 header.b=cMTyWYO1;       spf=pass (google.com: domain of axboe@kernel.dk
 designates 209.85.220.41 as permitted sender) smtp.mailfrom=axboe@kernel.dk;
       dara=pass header.i=@lists.one-eyed-alien.net
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


On Fri, 10 Jan 2025 06:47:08 +0100, Christoph Hellwig wrote:
> this is my version of Damien's "Fix queue freeze and limit locking order".
> A lot looks very similar, but it was done independently based on the
> previous discussion.
> 
> Changes since v3:
>  - more comment fixups
> 
> [...]

Applied, thanks!

[01/11] block: fix docs for freezing of queue limits updates
        commit: 9c96821b44f893fb63f021a28625d3b32c68e8b3
[02/11] block: add a queue_limits_commit_update_frozen helper
        commit: aa427d7b73b196f657d6d2cf0e94eff6b883fdef
[03/11] block: check BLK_FEAT_POLL under q_usage_count
        commit: 958148a6ac061a9a80a184ea678a5fa872d0c56f
[04/11] block: don't update BLK_FEAT_POLL in __blk_mq_update_nr_hw_queues
        commit: d432c817c21a48c3baaa0d28e4d3e74b6aa238a0
[05/11] block: add a store_limit operations for sysfs entries
        commit: a16230649ce27f8ac7dd8a5b079d9657aa96de16
[06/11] block: fix queue freeze vs limits lock order in sysfs store methods
        commit: c99f66e4084a62a2cc401c4704a84328aeddc9ec
[07/11] nvme: fix queue freeze vs limits lock order
        commit: 473106dd3aa964a62314d858f6602c95e40e6270
[08/11] nbd: fix queue freeze vs limits lock order
        commit: f3dec61d7544a90685f1dd9a87fd4afc751996d0
[09/11] usb-storage: fix queue freeze vs limits lock order
        commit: 1233751f7df722435bb93e928d64334db260b90d
[10/11] loop: refactor queue limits updates
        commit: b38c8be255e89ffcdeb817407222d2de0b573a41
[11/11] loop: fix queue freeze vs limits lock order
        commit: b03732a9c0db91522914185739505d92d3b0d816

Best regards,
-- 
Jens Axboe



-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/173651952702.758529.3309066666363818120.b4-ty%40kernel.dk.
