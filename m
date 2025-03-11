Return-Path: <usb-storage+bncBD64ZMV5YYBRBV4JYG7AMGQEZMTMAIQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf47.google.com (mail-qv1-xf47.google.com [IPv6:2607:f8b0:4864:20::f47])
	by mail.lfdr.de (Postfix) with ESMTPS id B6378A5C35E
	for <lists+usb-storage@lfdr.de>; Tue, 11 Mar 2025 15:12:40 +0100 (CET)
Received: by mail-qv1-xf47.google.com with SMTP id 6a1803df08f44-6e8add20c70sf5070066d6.0
        for <lists+usb-storage@lfdr.de>; Tue, 11 Mar 2025 07:12:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1741702359; cv=pass;
        d=google.com; s=arc-20240605;
        b=PRjOb4IJVsr5pM4qPOKq/eH00LioC1BtP2s6yEBJ/uZNxQb23v0Nw8+jducv25VY+B
         UtFCiI3kTUAuyqksEi7FIoFsIXRkWWdrnwjAyXDPDw/zkEzX8PtI0kG/VfgADmJS2AmK
         KmEUmuMrlSq95/3gWGOJeUyZOOJ5LuRmKBXVlnE1lbWfyKx/1htD3wBIvdl4ayE65TVT
         i6tSOH7tm0Hpr600E6FULXQZqTU05f/VMtl66Gyc9YMxfkYMMftFMSjlCxRNr16Ffm92
         QjAM0tge9JR628HqsGfmu2gC3FtV5MnUup6LUHP6vLQb6p3ROBKaFY5m+24q8h8cKLmo
         CwAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=EMoE8CJXTptL3IISNTXPKTnYQOaaysbBnRDHVgCUcXM=;
        fh=O3gd60bFCWFuBk0tsP1T+FePIYxWxvQI3PrRUQV9thQ=;
        b=IiAOBRODrRdqLY9h5oO3jE5gfWZCCgujlQHF9dPOBd/3zAcC2inHXsbK+fGb/IX56p
         0vKG5Aadb++109HsSqpoFkhYf7R0y00Y5at4DAlA+aFZDjTfo6tNU6gRv9RsXVUPrVp6
         ZzI7hDJJC1f258lyG3IEhDAl1L47gQPUSChPTatAaNJHa3rmnadJX9SuOab4Cxcaizw6
         wcLSNp+gEsv6rB5QzB71eCQt1Aiypu2VQTNWO3stR5ogLNcdCCsSNjs7a5lQZ7ixWvhC
         b86XlxxHDkWjULl1ypbBH1V9Ebtji6e/17fOjbtT+KUx/8r6qqSZEM61X/6L5I2oHLGO
         q+5A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=tOkNDQA5;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1741702359; x=1742307159; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EMoE8CJXTptL3IISNTXPKTnYQOaaysbBnRDHVgCUcXM=;
        b=ChgNzIlmptbXaKqUxJbHFzIuUt6/x8q/oqBOwWgoTR7qN6LT7p1AND8Q6h/STpe0Ey
         G62iUEHuLZAG2fx2X2fwVy9/fsiNV6hEuE86NacIUag3k/8idugmeycAX77jEooMWWAk
         mWSvgAUPNdci39N/+vuPpx2JEvTlqsgzQ+qCg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741702359; x=1742307159;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EMoE8CJXTptL3IISNTXPKTnYQOaaysbBnRDHVgCUcXM=;
        b=BCHA1xFT3Zww2CGt5BDTU/0WURe9gYCFydwsqYqHR4K7ylkULUNbJ3cMN+I4l77Ay1
         uW1CvE4T1mWagEo8jr29vfG0cerlp9zQEBuEx3r1856ympwBSO5QayyaIIX1P/EFnFWe
         m9zbKvn8F7ylHO7unoVfK+0/gFkE4/f9rH8Bs9hRtowsLOKHw2cF/6LOJfqmNIzbBtan
         su4tE/E+LhE/MoTv1n8NmvXrOrJzfXzvzQBMbKOhFLgUXFwBdaVmeZzQ2saRqrtFGYDs
         k3Hfvt5CBRsDVPC/CoLOYgNY1F9Xc/EJf1CNXknmBHaNjkcKBsMNZEsiUprM5tqaTmnh
         vUhw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUx3kKO236Abt2BxGHsHSLycAYABTqNii9RCb/mJIas0AvdzXbmd87XOzytJU/0whSufht4cQ==@lfdr.de
X-Gm-Message-State: AOJu0YzfRGRLqvWV9awGcTIOlCb3css24LRBzIUwqDLG816YbWAH5N0Z
	iMAiFsuvzE6UWeKJYrOrA4B3OB2Ih6bOyTc6K0YCfaRgzr+8zfaagSfQOgvreOg=
X-Google-Smtp-Source: AGHT+IGiejQ+slu2k1K0fYLqCFlWKsHAzdlCTjktZUozMoLQ3raE7lv43YQEAi0S6a7R8tcoqxL8ww==
X-Received: by 2002:a05:6214:400f:b0:6e8:f019:af59 with SMTP id 6a1803df08f44-6ea2dce5e91mr21550926d6.1.1741702359384;
        Tue, 11 Mar 2025 07:12:39 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVGeu8cbtT4bhLf8RQp7bMpEQNAFUyYfrnF/dp+wxjDE4w==
Received: by 2002:ad4:4c10:0:b0:6e8:f2bd:66b1 with SMTP id 6a1803df08f44-6e8f4f08b23ls81369606d6.2.-pod-prod-08-us;
 Tue, 11 Mar 2025 07:12:38 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXPEpmfLVHSBnzT49PN485x+NndWZ3ttFxDiM4fNmWB9TfKQ9Ddn1XNbCnlP3CGyeti0X8zLxGdVRIpug==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6214:f27:b0:6e8:f949:38dc with SMTP id 6a1803df08f44-6e900637fb7mr219047376d6.14.1741702358300;
        Tue, 11 Mar 2025 07:12:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1741702358; cv=none;
        d=google.com; s=arc-20240605;
        b=EYr9M/KPWTP1UVsY62QDAazwA1zt/sflP4pU1hgGsqmF3Yi1HJHB0h4iseC6EHbkZI
         Txb4WkkOFQiw8KcMUOO03dc8PIL5A3ncqKCNW2japw0TPvK5Ssxkk2fljPK/dT2ubQZ+
         yATlPHGkyjukfTZwJnjtsohBL00zElyKou2kQCwPNnrRpz6elEH6ttVEI744ocT/HVrq
         vmhnDHpb1IM9jN8i/Y/9XutbsHIqPN8f5/9fm4QP6S2JLZ1U4jZ6tHK5YDGbKdyHAQ79
         I6tNp503h2gARcN/+R2axmWUYghF8DtlYgmUeDGUnQavyvxZOecntJImx1CkWNdcCsCj
         Gamw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=kqS90eFGJ7/q/06uqKRGMnqOqUkTAtZXlVsfnwLorTA=;
        fh=GYEsd1NNiNMKRct6khmY5WXIiCvlf8gRTY8CWy+mo+Q=;
        b=Zoe7cePzqmii0GctnUy0blhPlQsSuR0KPsR0SNtuzxRncTLBGOHaveJ1ft7d0J6qf8
         PQ0dj8vkzBt+fc2U3dDI8B9cuE+4hfKIb/9fOljZPvyVXwOBQJ3NGSyoEV1PsZ0ggmYD
         jH5IcxI8IltH8LV5KXc48sVZYvJr9JT4NsB3RCc/ge4keezEe/ee+Iwc5UngmFi8xqQg
         3ckff/2CjxlDl1NCIBB/Y2hC9VWNxLDP18idREV+SSGfKVThyknHrkjoPJBTWvw2NPoV
         l0oAst+p5V9nc8+9Sp3N+djIRIToYJP4jIHijs301SNa8RCm/x8Ki5INo+sn59AQyUEj
         DjcQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=tOkNDQA5;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 6a1803df08f44-6e8f7149618sor59512566d6.3.2025.03.11.07.12.38
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 11 Mar 2025 07:12:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUoTRNGfpubCgfPt/t9KTTUSY+fsH5rrzTyWWmYe2Hh9C9qh9U6cFjuTn12wM9e6YzRj/16uaUsILs4Iw==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGnctGIpF4hOFuMBFUPTDClVDVdUNLq8kPMHZHZGeZoOLnI4lzi0v/jg++YSB+pVQ
	hModXDZY32pvA+D5T+tb2VraiLEK/+7a0i4cBGVjq4vXohAd8Ajzr0zU50vTvdF6XAziDoTsd66
	K0zlsG4K0M5hH2Pv58rBhs6B0MMRmGLRfkrb6dN3eqYUV4rmuNF3hSLvXaHiC04kZ+P6Ugdlyxo
	X7SPyKhNbf5BW7y1iFDMGzXeddYd83VsLm5yWt0TN40ysiMnRZ2macOeXsq0B0ds+6Lxpe9byfn
	TorS9hIXoYvPy0CTOL7JI7Au9goRa98HUMDnmPGqIRk09s2IV0NursstYFrJ3uk=
X-Received: by 2002:a05:6214:4113:b0:6e8:f60b:9bf8 with SMTP id 6a1803df08f44-6e9006c8774mr209755866d6.33.1741702357937;
        Tue, 11 Mar 2025 07:12:37 -0700 (PDT)
Received: from rowland.harvard.edu ([140.247.181.15])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6e8f707bf47sm73501706d6.25.2025.03.11.07.12.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Mar 2025 07:12:37 -0700 (PDT)
Date: Tue, 11 Mar 2025 10:12:35 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Xin Dai <daixin_tkzc@163.com>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb: storage: Fix `us->iobuf` size for BOT
 transmission to prevent memory overflow
Message-ID: <6a266eb7-0150-43e9-a712-b9e6fe8c71ea@rowland.harvard.edu>
References: <20250311084111.322351-1-daixin_tkzc@163.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250311084111.322351-1-daixin_tkzc@163.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=tOkNDQA5;
       spf=pass (google.com: domain of stern@g.harvard.edu designates
 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
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

On Tue, Mar 11, 2025 at 04:41:11PM +0800, Xin Dai wrote:
> When the DWC2 controller detects a packet Babble Error, where a device
> transmits more data over USB than the host controller anticipates for a
> transaction. It follows this process:
> 
> 1. The interrupt handler marks the transfer result of the URB as
>    `OVERFLOW` and returns it to the USB storage driver.
> 2. The USB storage driver interprets the data phase transfer result of
>    the BOT (Bulk-Only Transport) as `USB_STOR_XFER_LONG`.
> 3. The USB storage driver initiates the CSW (Command Status Wrapper)
>    phase of the BOT, requests an IN transaction, and retrieves the
>    execution status of the corresponding CBW (Command Block Wrapper)
>    command.
> 4. The USB storage driver evaluates the CSW and finds it does not meet
>    expectations. It marks the entire BOT transfer result as
>    `USB_STOR_XFER_ERROR` and notifies the SCSI layer that a `DID_ERROR`
>    has occurred during the transfer.
> 5. The USB storage driver requests the DWC2 controller to initiate a
>    port reset, notifying the device of an issue with the previous
>    transmission.
> 6. The SCSI layer implements a retransmission mechanism.
> 
> In step 3, the device remains unaware of the Babble Error until the
> connected port is reset. We observed that the device continues to send
> 512 bytes of data to the host (according to the BBB Transport protocol,
> it should send only 13 bytes). However, the USB storage driver
> pre-allocates a default buffer size of 64 bytes for CBW/CSW, posing a
> risk of memory overflow. To mitigate this risk, we have adjusted the
> buffer size to 512 bytes to prevent potential errors.

There is no risk of memory overflow.  The length of the transfer for the 
CSW is limited to US_BULK_CS_WRAP_LEN, which is 13.  And the length of a 
CBW transfer is limited to US_BULK_CB_WRAP_LEN, which is 31 (or to 32 
if the US_FL_BULK32 quirk flag is set).  Therefore a 64-byte buffer is 
more than enough.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/6a266eb7-0150-43e9-a712-b9e6fe8c71ea%40rowland.harvard.edu.
