Return-Path: <usb-storage+bncBDUNBGN3R4KRBOOORGYAMGQEH5UX3VA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x446.google.com (mail-wr1-x446.google.com [IPv6:2a00:1450:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8A088BA39
	for <lists+usb-storage@lfdr.de>; Tue, 26 Mar 2024 07:12:10 +0100 (CET)
Received: by mail-wr1-x446.google.com with SMTP id ffacd0b85a97d-33d8d208be9sf3529002f8f.2
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 23:12:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711433530; cv=pass;
        d=google.com; s=arc-20160816;
        b=jiCQMl/pPxQrNLTchAVTVHX9jE/0EKlNxN6jvUqfxZM9D4GrO6Faql4nUxVMVJY3v+
         sXLi9zNUd/bIw2/rGjtcPe9lwaPaNQI4Mqk/5xzfb4TlCmqR5oM2+BvIi4Vcb4A9HO/V
         6kG93W2HUSVeVe9hGycAn7PM/QM49OR0ojtugi/6fpsJhKaZxVU+snLhEriycUYMCDCm
         CKYyt5fIXleDMck0VwZGkglaRVIRbdU7Y4qOmNmYsMmYdXDTwAEoyvMSRiQPJ6dh2VHZ
         wSURoO+QWLJfL6SnuRBKDBYpz0RroLJtv8E0tkpRNdLJsX/ij1+Ittmd/GWGxQx/M4jb
         /WSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=CzLYZ9MBu0SPewCu+K4TVq35KEnov2U+PU5MmJFrXf0=;
        fh=mgTBDKmOtk9IZZD6KipmID1mJIM1lgXsfdEvUUWdzB0=;
        b=SjfvWtihM3uXRceClYWJtFJXDvRGRKK8ho960FLGufRb6PEoqLXeqUipqRZa8Groy0
         1AljIg4ldIoeOvMZB0Rndtxo4x+tL7jDNqhJZKs/5CJgF8ovu26hJXINB5GIE66GaQcO
         VMmbXZvH/4YfgVbE7v99xOxOB7/hti7ylLLW6yJf9+gz/A+sAfKG64oeiXsvyEsoZAh/
         ZCuMOSYD0KK8+TU817lqbIQy6rA2uYZmm/4zB5r00wppxHbF1bciDrINVlvpV67UI5KO
         sT8sxW0s01GQFvlCJK1aSaZx8Fgg/mpleSLnezaXn9Hwn1ktnHsr6nDHJZgdXoaliFlU
         EP+A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711433530; x=1712038330; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CzLYZ9MBu0SPewCu+K4TVq35KEnov2U+PU5MmJFrXf0=;
        b=HsyB0CtqTIB7mPdXOCwwdfCTVLlWOu0ouJxiYkz8iylNsZSzxxOKjB/z/Pd9J6uao3
         LleQv2cg57w8PiKESm7v3ZmOxWm7QeqwTj7gOrrzL11iSHyDgvn7E/KzW1kmvEWEM+BB
         oP2wIUyxutE9Ht58CvI2AJYyG/Ud8VnuWF5Zw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711433530; x=1712038330;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CzLYZ9MBu0SPewCu+K4TVq35KEnov2U+PU5MmJFrXf0=;
        b=TBOOQ2pYjpMZj8WvVy5k88ZxcV3DAIdIFLX2H21AZNwOLBNOC51s3hJZclmvayYggf
         D/6piXMzHPIm1KvX15UaquZog6HN7MH1RzaOCCnzb65b8X3JO+Y3Z6fZzymbsKNyvanA
         iqm7nOzkQqxhoK6hQIfdyWAYFsqYlMON/kMjTQ12Ee1p/69Ke/SNwly9//rPbbZZKmQ2
         xyfwAmyZn6yrgdk9lY1wMPRxWakOolX7C6RGFhpZcXKhgyZYDC+LBtvigAr2HW2tpxNI
         6zdOf1kZpcRm63sFMlnZK6eWVjeIT6NWAUUtbTi4PQatB37qyHRA5T4B79NtBTIhKHB7
         u0Jg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW/D2l2cItMA9ZsnMaRbwA1Sz85f3dds3otjc7jMrFzh39oTBWztTyGldLjSb+j3x0QNcYjh6dyraPPG3Oi+3VbhUOVQFQZKUNJ
X-Gm-Message-State: AOJu0YzE/lNkR4MKtNzjSc4Qf5px+0HfdeJXzCXyD7+VlDlqgbyiX03i
	b5hJ7hcU5v9X0yWEir2ho6IGeaqwio8E2G4EwHu6P8iIE+xP69UJe9TRQZqVBTA=
X-Google-Smtp-Source: AGHT+IE8RpWWcHmj0NXgIgLg7k9jmcGSnYgthAYEMqg94uRgaTI9Y4MKgMIPmmW45IMfhQnjr7AcYQ==
X-Received: by 2002:a5d:40ce:0:b0:33d:1eea:4346 with SMTP id b14-20020a5d40ce000000b0033d1eea4346mr6222491wrq.37.1711433529683;
        Mon, 25 Mar 2024 23:12:09 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:adf:ef45:0:b0:33e:77b4:c05d with SMTP id c5-20020adfef45000000b0033e77b4c05dls2186928wrp.0.-pod-prod-05-eu;
 Mon, 25 Mar 2024 23:12:08 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVStS5QcRQB2fXriFWLT8vpdo8rPLfWAOAktXr4Bg1Jl1pAphDt40K9ebo8HjpNX4T6iql5n9HbZnNWwQn6E7OC63yo/2835OJySnrc6xXhNmVEMwQ=
X-Received: by 2002:adf:fb4a:0:b0:33e:7062:4c9 with SMTP id c10-20020adffb4a000000b0033e706204c9mr8027369wrs.3.1711433527816;
        Mon, 25 Mar 2024 23:12:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711433527; cv=none;
        d=google.com; s=arc-20160816;
        b=RjgdkM2eb8UDmPhn8rvDnI5aQEKrjuNdlUBfoUhWUis38jRjqO/CcHYldhFxffqUD0
         KM6+tmle6WfJ5tVcTV6tcT3Umn76Fg+y3toMZWWXoVKfqIgG0j2wj9OCBUJWxpscZcC8
         STqRUilGt40vhVdM+DxI3mbn6ZHjL42w16NTLqm/u4mCjfcb2haopy+dzWeYmbdNijvZ
         +7MXXH02JUXfygOitKQ1BS9kPbjLkV04PhyIs6KXpWp97UPrT08JExNcjMTIcD9QVRuc
         iIi3viLCp69r3cknbNTd+p9aR9U3xcpVNK+aD7wci9A4xYH8fkMDUQNjLXLjymKZQQjX
         15Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=DLOvoDpFweoFui+c9660re0k33VwORLN/UF4pYQ5XnE=;
        fh=7SMFdBk7lsQwIHL76JTnMo2kdVMyIFhMwXDGqn9MLsE=;
        b=AAGWfRPo6sDBFAcKoKLj4/+186xKD5PlsFh4z7OH8CM10oic4x28iDf5wSECK21W2n
         0CFqrg4jQFf8j1/OCFhvQO8hCeNEuod0kCKYdccBnNRTSa4RPf9dqMyQWb8rlE+rw36Y
         mlG6XyLdkO9SemQxFAk8W/SxiaFepewN2WaRCd63HSWQw6xXYXQSC2ExYq9WNpcJlfIa
         kDXcCE2cecmIxjgLutpVJJlFQX7SkMkGaVpkfirAfdL116d2E+4Qjc2iYCnvoKnOnKJD
         BQ+R0yUDi3z8OgkQVyv3NPqPbLNVIJ2jRzx2cUXz2mbDjO2C6zskKvmR0exSbDNykFCy
         rXaA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id e14-20020a056000178e00b00341ce04fd21si1690486wrg.332.2024.03.25.23.12.07
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2024 23:12:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 572EF68D47; Tue, 26 Mar 2024 07:12:03 +0100 (CET)
Date: Tue, 26 Mar 2024 07:12:02 +0100
From: Christoph Hellwig <hch@lst.de>
To: Bart Van Assche <bvanassche@acm.org>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Takashi Sakamoto <o-takashi@sakamocchi.jp>,
	Sathya Prakash <sathya.prakash@broadcom.com>,
	Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
	Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Xiang Chen <chenxiang66@hisilicon.com>,
	HighPoint Linux Team <linux@highpoint-tech.com>,
	Tyrel Datwyler <tyreld@linux.ibm.com>,
	Brian King <brking@us.ibm.com>, Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	John Garry <john.g.garry@oracle.com>,
	Jason Yan <yanaijie@huawei.com>,
	Kashyap Desai <kashyap.desai@broadcom.com>,
	Sumit Saxena <sumit.saxena@broadcom.com>,
	Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
	Chandrakanth patil <chandrakanth.patil@broadcom.com>,
	Jack Wang <jinpu.wang@cloud.ionos.com>,
	Nilesh Javali <njavali@marvell.com>,
	GR-QLogic-Storage-Upstream@marvell.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
	linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
	MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com, megaraidlinux.pdl@broadcom.com,
	mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 10/23] scsi: add a device_configure method
 to the host template
Message-ID: <20240326061202.GD7108@lst.de>
References: <20240324235448.2039074-1-hch@lst.de> <20240324235448.2039074-11-hch@lst.de> <b3ee2dec-3258-4c9f-81d8-0a266128b9ef@acm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <b3ee2dec-3258-4c9f-81d8-0a266128b9ef@acm.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
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

On Mon, Mar 25, 2024 at 01:35:08PM -0700, Bart Van Assche wrote:
> There are two methods with names that are politically charged:
> slave_configure() and slave_alloc(). Shouldn't both be renamed?

Probably.  This series howerver doesn't actually renames anything,
it just adds a new method that takes the queue_limits and avoids the
name while we're at it.

> The name "device_configure" may make people wonder whether that method
> perhaps configures a struct device instance. How about using the name
> "sdev_configure" instead of "device_configure" to make it more clear
> that this method is used to configure a SCSI device?

I think device_ is probably better as it matches the target_ naming.
I could live with sdev_ if everyone else would prefer it.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240326061202.GD7108%40lst.de.
