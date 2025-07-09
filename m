Return-Path: <usb-storage+bncBCUJ7YGL3QFBB4EUXDBQMGQEV54DCPY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 67182AFDFDF
	for <lists+usb-storage@lfdr.de>; Wed,  9 Jul 2025 08:21:38 +0200 (CEST)
Received: by mail-pf1-x448.google.com with SMTP id d2e1a72fcca58-74928291bc3sf3941896b3a.0
        for <lists+usb-storage@lfdr.de>; Tue, 08 Jul 2025 23:21:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1752042097; cv=pass;
        d=google.com; s=arc-20240605;
        b=ieaDbbeWgtAJaxLbzhCLpkJwAxLwy7FqN08cB1PrA5w28gcc/ZljwoVPkeVLW/doGZ
         NEITAaU+HG1iUOndwwlKXJP9Z/Ui0TWgUwQdr6xyvWHvRANX7r9T1PhPnmyR1bD7fPOR
         oYDgm3J3kKI/NihUwoKKUnI0Y1s6BJpA6pr/y01mDvhr+Izs48BGTkGfKsXsY/d3+k6+
         p1LmOgpJVg4/gZ6oOQpPeFvnuo7HjsTaR6jYNgi89aq0TqaHfU2jT6TW8PDe6jGuEA7t
         79qbUfcg28yOFyu2H1r3Dj+jElM7vaLsMG6sCOj7foKDXI66T7I3cAySIDh4Wujq3axe
         wmhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=dHuFDOphaRvQ6Awgz1/3rqXeTOw7oMRmQ0X11anc0Ow=;
        fh=gtoOVpP+yGKN0L1R/2bPHQwiOcuC3E9juam63Z0WGR0=;
        b=KYl8iiC17KT459OTf82a0mRclLAspIS+ufuATR1a9w8bwsIy/TQD5n+p+xhT2mQIgy
         4joute+4LcwiAjUCXG+/rgvQIKQAFxmlSC055kI4pVnlR6uAaDEf83XPdqQuv+jr7ebD
         ZlCiMW8bG2fvXGrvocSdTxdZz6Yl4FAaX0VEh//HSbsBjARXh/X0JlSKlsYE4EQChwvP
         x7bz/HD73fsbF4aCw2FYP99oNIjd8A563Rmv6XJkIj9y3CQkkk9pPM4TqB3fnsPIWSJv
         nwlXcL1Rntcowq2P4eSfar2IxI84553zRya8uO2Ws1Rcg0YDFtdI8e0zK4lq/HCDqDhD
         i0Pw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Ow5NB9n0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1752042097; x=1752646897; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=dHuFDOphaRvQ6Awgz1/3rqXeTOw7oMRmQ0X11anc0Ow=;
        b=TG9ENVAup0XSxFKX2BA7GFRC3iUi/FmSpPbPHzEdS4hb6vk6oUE4vzkGmeFyzVl/J/
         0u98kTyHV1b9uor70HHchXqzU8fbtLSxBoag2Perx9PygKVNj7rag1o0kuohNlCiabSq
         4VDrARmI522aj0O6DlCaO8X41dSqGBjwcSO1I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752042097; x=1752646897;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dHuFDOphaRvQ6Awgz1/3rqXeTOw7oMRmQ0X11anc0Ow=;
        b=K1pvDOA1O7tz2axPpIN5n+TbXJ6uMKjcVRBE4XLWw6N92LqFwCyTP72n9dfvIbnzgj
         uNEbFMMsvtTnFlDBMwsLbGEdhrzsRbtaVSVfg1p4Nr+MsqCoBamXKyJxl4aDbPcKkTD9
         nT3FGsyLDK49yADh01dU9c2vkIQtFzzIOjlK9vs7BPGAnJaWA7uSdT1PEH0EgUv/V/jL
         3DoQ798F9xd0J3licnQBQ5VbYgqkUGhqvF5IPx3+2Oy1Vsm/SxZHQOCubcZs92bIe8ag
         dD14RswlOVt1k23FZtA/PTU7YiIu8IX00bIjPCcfg5j6vnnLKDQBldTWF/FBSYyKHzud
         0K6g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXCeYt96u0GwIZcX+cVADOGHs0S6GV8Rp2ZlLp+MIyhfCBpOaAGu/pM10JJ5H3zFaCBYcCmMQ==@lfdr.de
X-Gm-Message-State: AOJu0YzlRtq0tTwsrMLS3zbzuQWscPb/l1CVcPvUkFqOI9zRFuiPBFQK
	U5z1ZvDt7IBYwf7AZAZOXg9/r0Oh3tAKm4ZyFfyWoescTwOz7MtDWY45lmvSw0U4ekE=
X-Google-Smtp-Source: AGHT+IHjQP/yrnezcJYk+SJXX9i02gr8DFsXs8kFXRZGvyUQZp8j0MGOY3AZQneQiWhhAgkSmrlwfA==
X-Received: by 2002:a05:6a00:3c95:b0:74b:4d96:d159 with SMTP id d2e1a72fcca58-74ea60b54f6mr2318272b3a.0.1752042096929;
        Tue, 08 Jul 2025 23:21:36 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZfe8x0t7H3LXdnIPNd2aGSuhkyxXjy8WYhUiy1DJZdQZA==
Received: by 2002:a05:6a00:2446:b0:736:b1e7:af81 with SMTP id
 d2e1a72fcca58-74ceb5f8015ls3762974b3a.0.-pod-prod-01-us; Tue, 08 Jul 2025
 23:21:35 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVm9qiXUiGinDmAlFkUrJsxcs+DgK7x4r+ikNsX1qW6WRBMebqx6F9iAaQ1/dECEc20QJ+SD2NtA02d1Q==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a21:3290:b0:220:842f:2765 with SMTP id adf61e73a8af0-22cd7aa6410mr2534011637.32.1752042095048;
        Tue, 08 Jul 2025 23:21:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1752042095; cv=none;
        d=google.com; s=arc-20240605;
        b=GkeIXdtHbjL+OWcUWOO07q/mD+aIHQar8kjArAsLxrDNL6EOyQEajBMQlJBs+HQ6mO
         SP17wEoOt0xfG2VfaTxShyzmDdy23D07yK1ID6HPeeM5M5M8wLAyWAPPUrcCLqZ+ST3n
         pkoYMrPH7pQ/KsXwwPM75qgj1o71ELfqdEcNZoqsp8DxbsGLUuE821OWyyP09OC7BSaP
         S5B21VUP2trvT6HyD4hWiawo/EV+UtXoPyCO+lr7htpwHoaIkVpHT7Pxh9KEAmy/XvRi
         htoDdJLZ88tyMJHTCg5AmYm6xCZbMm6b28jWghZuh63n6f/kQENO5tXXJoVK3dKpFnrJ
         NC4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=vRU9FTtdeYLrlJerPYbbe9rQj4re758hFb5hjLOKIhQ=;
        fh=a1YKTi9pHnywQ2XBEVGe7xjTioXL4dc+m9vRhIedUME=;
        b=N+G7PjZ4bM+R6turP+7zU8jLbjg6EDmYz2hpez+JATfNtbsCuTRMlPd91ZR0pQuJZP
         WChU9b4R3ce07zXswX//mS/TBoaBzTFQsTK7y48SkdL7MhB4A77vY2suBZOAkiGlbHCj
         uOE5DV+xzOqWzHFTYZYolEDmlnnexdKCeu0CUvaEEl7gbnEI02ts2HEJFWDnLbCkivD+
         qXGQMNcp8mTyf13gQwcNstaqhW3RgVw/VA6E8BG6U5ejWXZGOZKWtGecuETMa/wk9Pur
         VCetc1Z7q1goPR/CrXRDVht3FQrOAfY2VG4IyjQ6eyQtgDBPSCq5sKa/LTkecO7V1Q2D
         mhMA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Ow5NB9n0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sea.source.kernel.org (sea.source.kernel.org. [172.234.252.31])
        by mx.google.com with ESMTPS id 41be03b00d2f7-b38ee4f1d5esi15375322a12.338.2025.07.08.23.21.34
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jul 2025 23:21:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31 as permitted sender) client-ip=172.234.252.31;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9CFCE46105;
	Wed,  9 Jul 2025 06:21:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28C31C4CEF5;
	Wed,  9 Jul 2025 06:21:33 +0000 (UTC)
Date: Wed, 9 Jul 2025 08:21:31 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jie Deng <dengjie03@kylinos.cn>
Cc: stern@rowland.harvard.edu, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH v2] usb: storage: Ignore UAS driver for
 SanDisk Extreme Pro 55AF storage device
Message-ID: <2025070902-service-foam-1da5@gregkh>
References: <2025070422-punctured-opal-f51e@gregkh>
 <20250707062507.39531-1-dengjie03@kylinos.cn>
 <2025070702-unsigned-runny-62c6@gregkh>
 <4bac2d53-0e5b-437e-92bc-12921a8efd8d@kylinos.cn>
 <2025070810-nintendo-congenial-95d4@gregkh>
 <92f1e73f-5814-4e01-98b6-1c9c0b87f903@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <92f1e73f-5814-4e01-98b6-1c9c0b87f903@kylinos.cn>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=Ow5NB9n0;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31
 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Wed, Jul 09, 2025 at 11:40:03AM +0800, Jie Deng wrote:
>=20
> =E5=9C=A8 2025/7/8 15:33, Greg KH =E5=86=99=E9=81=93:
> > > 2) linux + arm64: The SanDisk Extreme Pro 55AF device will report an =
error
> > > when
> > > using the uas driver and the driver cannot be loaded. USB Controller =
model
> > > (Vendor ID: 1912, Device ID: 0014,uPD720201 USB 3.0 Host Controller).
> > Ok, that sounds like an arm64 issue we should resolve.  Why can the
> > driver not be loaded at all?  What happens?
> 1. During the process of loading the uas driver, the following error mess=
age
> will occur,
> resulting in the failure of driver loading:
> scsi 3:0:0:1: Failed to get diagnostic page 0x1
> scsi 3:0:0:1: Failed to bind enclosure -19
> ses 3:0:0:1: Attached Enclosure device
> sd 3:0:0:0: [sda] tag#10 data cmplt err -75 uas-tag 1 inflight: CMD
> sd 3:0:0:0: [sda] tag#10 CDB: Read(10) 28 00 74 6f 6d 00 00 00 08 00
> sd 3:0:0:0: [sda] tag#10 uas_eh_abort_handler 0 uas-tag 1 inflight: CMD
> sd 3:0:0:0: [sda] tag#10 CDB: Read(10) 28 00 74 6f 6d 00 00 00 08 00

Any chance you can use usbmon to try to figure out why the arm64 system
is sending different commands or failures than x86 is?

thanks,

greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/2025070902-service-foam-1da5%40gregkh.
