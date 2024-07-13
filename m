Return-Path: <usb-storage+bncBD64ZMV5YYBRBYGHY62AMGQEHKCOORA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id 83894930336
	for <lists+usb-storage@lfdr.de>; Sat, 13 Jul 2024 04:18:10 +0200 (CEST)
Received: by mail-oo1-xc47.google.com with SMTP id 006d021491bc7-5c6927f9593sf1930740eaf.2
        for <lists+usb-storage@lfdr.de>; Fri, 12 Jul 2024 19:18:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720837089; cv=pass;
        d=google.com; s=arc-20160816;
        b=UkiYT1b4n4miKKrS5r71ftaBlGulvAdun7tCZc2LQBKhFgt/db1LTx54QM1F2aGmda
         plre15DZaVjiJKAOSuTW1ZhW+HTXeTdin3haFPvgDCfHhLJ5haGhAd8wulLkt6yM0Zcj
         yiYLueMlREigO7Tdt/x4oGS8RKJrMj6lTDGOlipNWwFzW9UNU8aaEH7ZxVZmcNYI33BU
         1gVJiBsJTrADk1bK2VYXYumj1WCc1SoVDTKINDHRjkVVZY94ycKeDGQ1GU4Zd3ItL5wV
         HALo2f+W7WjGFfQnbKiGzkFz3dbenBnZdHcYFWOW7iJ4RVIQFBltMajZpBeBkrwtHA6Z
         MB/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-disposition:mime-version:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=j7GDeNW4uxbga7AZawzy5XliWGRPNr6dVJo5Gzaj7oo=;
        fh=lUzAV0OgjkHwh6pZksaGrhSliRVybzmqYFdHwXKP0XM=;
        b=YeVzsAyljFFleGDDKxZoQO18cdctYW+ppn91M9AHB9PKuMTYE9YuEMIPK9S0Fpfkwa
         /ivecaMUBxveFbPHeQBBti93QilK3SzgGEd9K5Ih+pZoYP6y0ofrO+p04YECbFunoRsa
         HcYhLrGX+wS1bWYfBiJ726YIPewHcBocuFyJMupd9Hcyt020SZi+QRF9yOBrc6tC+jNf
         VyJn5QCqVojdV9RbbBffauXHOlfv96xUQvBjGIGvMbs7FsbgFRxGWkx1SQ6/EhMc57rl
         jnH+Ubq5gzELzL4ZhLrHooI5YC51BLxwiB2n+TuWWvbnJVmwWqsEgRvEOTIoUP8FQZmH
         LjKA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=U+CrGBIk;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1720837089; x=1721441889; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j7GDeNW4uxbga7AZawzy5XliWGRPNr6dVJo5Gzaj7oo=;
        b=Chy2G65vpgiJpbIR53XZeV2mPlQ53IVSwCXzoi2yD49GdDntJQsZLx79cG0EetjvXO
         H2EXDwg7ZQ5twIGD+2c3+3vSUir/Q+NXE6VIni+Me0unGruq8lPXXcx5RoBzheUXInip
         sCopg5EKr0py1xiWObeuvIxHCK8GMHMsS8ZKo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720837089; x=1721441889;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=j7GDeNW4uxbga7AZawzy5XliWGRPNr6dVJo5Gzaj7oo=;
        b=YWgYFgyQybDmLsyvhvZIvaw6vPt0yZhhmC9IzgFOyTeCILsGtehSBomhuPlNU84jic
         6RzoEmnbySN/1mdmKFP82u09YnRe3qCyQRzVqCDfyeX8mLzDrMwm2rnxHXllRtHRQ24X
         knnTYCjoPuHDvd2hFaEfS102V5d+Y+Rr5DbHgjCD5lNSbmSzSQJFXYGb8/R67bNM1NCg
         TbZwgQRyyFAyuQyYQjfuOx2UFgVUEzmGERsDKdtj4cw+Kh6/ExbQcP90nKBvgddUOtlf
         eD+2+cB18jdjET68y3Tfvj7dX1CDRuhPb1NpAg7i6vLNHsZ3VRlsX6wxIloK3uJsDFtG
         /3sA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWsUqtYE5Ts7I+Wd977CcrCYuA4h5zl/rR0pm3lxN2O32AXgGv3oV0f8Fbf2YH7Y88RS7+NaVMcfBKx0Sz9Kf+ZAj2BczY9tDjq
X-Gm-Message-State: AOJu0YxZizFQ30RjDGU2J0rW8lJowosDZsCGZsyQAiQZSdvBtKXwAfWB
	juZUp7qKU8LTA8gju0bEmDgFL+4rQI9RIlLO//1sP1qGwEropH3AGpKYnGMT3js=
X-Google-Smtp-Source: AGHT+IGAjGuPMdn/M45qJ4Fmmh8m83UlCYJ84/y/oThJMPY3y7lhvZLHRRcEmkQ54LvREWDmQKoqdw==
X-Received: by 2002:a05:6820:2183:b0:5ce:2f7c:62de with SMTP id 006d021491bc7-5ce2f7c655bmr1010657eaf.0.1720837089044;
        Fri, 12 Jul 2024 19:18:09 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:df12:0:b0:5c6:649a:f1ab with SMTP id 006d021491bc7-5cab71f67c6ls2230045eaf.2.-pod-prod-08-us;
 Fri, 12 Jul 2024 19:18:08 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXNsea8+noeTcQfnxk/gkYRHWyvic3FJJL6mQl2BvjdbdieMyIwhWbERr2mNkv6J72V4I8K1ECznpOqIcxDICnFwiBqi6n8VFHkAOUqQRx/Tjf7gjg=
X-Received: by 2002:a05:6808:2018:b0:3d9:2def:21b4 with SMTP id 5614622812f47-3d93beff4b8mr16187930b6e.14.1720837087760;
        Fri, 12 Jul 2024 19:18:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1720837087; cv=none;
        d=google.com; s=arc-20160816;
        b=guBpHsfBcdYuP2uSJzw+P7K1/M/Hkuymz1wCiGgZdhfnF8EFoMdzlAh4vjS/BGei8r
         7g8Yxdzl0x6iP4mTjfia60qAxaRn0cZR86+VOCFisWXRsNNjBrGclpGrqQr6OKMnmI18
         o+vLyPmVE2vMY/BCs8PqV0q5awmkxOPw6oOw6F04v+VNYOqOL8bZ8Gh169ZGmdFgHrRN
         gXaVNfWxUDt7cb3p7VDijRzzt+jZR4sY859mDUMGxB75uU86b+/4nzWSUH01ah8YQqBe
         HJATuPja44W+Ae6NKIY6+PKHxgSVE+L6meLsZOJKv3ZxGvrazuaNcfzeE2nHAXlsE9jV
         Rngg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=P4/vQGc924ZtBHUCsIbXJM+oSQ41bTSKdLtLmWvVwcc=;
        fh=87U3Gh6WaDzuxhXJ3P3gyQkRDbXUSi2tiPbHM8HfFOs=;
        b=QsEuqtzvFb10AaGuUUAOmrD4SoCvdJ0ZDrZtj5gTtXPkrKS/PNqVnwH3wZ4DbW1fNn
         423p3gnCFZTA+qVRae28QrgSTkTfAxsqH5hCWYJgB45QKBnJhD2osc8uWRP4IL+KK60q
         9V9xWSSTXgPPXbfdr2Drqxexu0CDUj98e2wROu1l1atvD2775TDMQJx8HSi8joiLPQP/
         +qNsBJY+UoWVpLMVyNpzJMcWOH1HJCgKRbSbxGurETSdIsMxuzI1Nyt5/TQzFE93PMrg
         m04OlJADFLjYPehb8xFMEPeJhC+LnJkWYh0B3Asw5rnHK23qrRaidzWFZY55SZWrAMI8
         oI2Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=U+CrGBIk;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 5614622812f47-3dab3dd2601sor80412b6e.10.2024.07.12.19.18.07
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 12 Jul 2024 19:18:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVuWCB+cjPpX6bKfFMk+aG8F/cB6YVuW1yxo4guNwwUKfXbp6iCV6iLc0xLVE/RcylFrNg850Dtu6eihnU1uREJN0Vl4WsSCoMP9t+pjuY8xBz+V+0=
X-Received: by 2002:a05:6808:16ab:b0:3d6:32d2:2c10 with SMTP id 5614622812f47-3d93c03902dmr16933123b6e.31.1720837087123;
        Fri, 12 Jul 2024 19:18:07 -0700 (PDT)
Received: from rowland.harvard.edu ([2601:19b:681:fd10::cad7])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7a160ba4e00sm10843585a.2.2024.07.12.19.18.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jul 2024 19:18:06 -0700 (PDT)
Date: Fri, 12 Jul 2024 22:18:03 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: =?utf-8?B?6b6Z6YeN5L2Z?= <longchongyu22@mails.ucas.edu.cn>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: Consultation about max_sectors in Linux SCSI Drivers
Message-ID: <98ce660b-cd13-4ffa-851c-ec3cdca9bdcc@rowland.harvard.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=U+CrGBIk;
       spf=pass (google.com: domain of stern@g.harvard.edu designates
 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu
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

On Thu, Jul 11, 2024 at 10:16=E2=80=AFPM, =E9=BE=99=E9=87=8D=E4=BD=99 wrote=
:
> Hello!
>=20
>=20
> I'm sorry to bother you. Here is the problem: My usb storage device
> has a 64kB (limited by hardware) buffer used to cache reads/writes
> which means it can only cache up to 128 blocks(512B) of memory.  The
> SCSI Write-10 and Read-10 command has a total-blocks field that can be
> up to 240 blocks (120kB) for USB2.0.  When originally testing the
> product on Windows 11 it never writes more than 128 blocks at a time
> but when tested on Linux it sometimes writes more than 128 blocks,
> which causes the usb storage device to crash.
>=20
>=20
> Is there a way to tell the host OS not to request more than 128 blocks?
> I have implemented block limit VPD page, and it works well on Windows
> 10/11.  I even set the block limit to be 64 blocks, it's OK too.
> Because before the data transfer, the windows host issue an SCSI
> inquiry order with the VPD PAGE CODE is 0xB0, so the device could
> transmit the block limits information to the host. And then the
> windows host could adjust the amount of data transferred.
>=20
> However, on Linux or MacOS, the host does not appear to be running the
> block limits command.  So the host don't know what is the block
> limits. So the write/read blocks number beyond the buffer size.
>=20
>=20
> Could you please tell me what can I do to dissolve the problem?

(Note that this is really a SCSI question, not a USB question.)

You tell the Linux host the maximum number of sectors the device's=20
hardware can transfer in a single command by writing to the=20
max_hw_sectors_kb file in sysfs.  For example, if your device shows up=20
as /dev/sdc then you could do:

	echo 64 >/sys/block/sdc/queue/max_hw_sectors_kb

You can even write a udev script to do this for you automatically=20
whenever the storage device is detected.

I don't know why this doesn't happen automatically.  Maybe the SCSI=20
layer doesn't try to read VPD page 0xb0 on USB mass-storage devices. =20
You should be able to find out by asking on the=20
linux-scsi@vger.kernel.org mailing list.

Alan Stern

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/98ce660b-cd13-4ffa-851c-ec3cdca9bdcc=
%40rowland.harvard.edu.
