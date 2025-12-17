Return-Path: <usb-storage+bncBCUJ7YGL3QFBBDXKRLFAMGQEU5UTENI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 111CDCC7F60
	for <lists+usb-storage@lfdr.de>; Wed, 17 Dec 2025 14:50:09 +0100 (CET)
Received: by mail-pl1-x648.google.com with SMTP id d9443c01a7336-29f8e6a5de4sf58655165ad.2
        for <lists+usb-storage@lfdr.de>; Wed, 17 Dec 2025 05:50:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1765979407; cv=pass;
        d=google.com; s=arc-20240605;
        b=Nzi2CSqqDAu1EDQPsV7g17BEr1ciCov5j7z31VxATpd1eZl0koEwKD0w7lYbDcCYvl
         fWD9hiP28OEJ+bN5TIMr1i96czt1Vm2tDyknU4Xy2OXb56ANaSRytpRqcn3kfoLHMTQV
         oUczDuJncC1NiVr+sI/kV3z1T1SiMd0x/DzWOpp302M96FkqjIUCElGs3s2iqbTqjGTM
         EODMCI4LaHMKyKHZZmQ4XhNeuw1nUV9YFcg/+U5KcohZZEqf6mCg2pDGvolSK9t1fFB5
         hQ63Phiwc27Ql/mcIngsXFDYmdEEDOBIeBfr2BO0GazbRMjXO/oOYrWKYP8Kcrp/ynSy
         1qGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=BII4b8HRaFh1F7CZ59Lnhvp2MK8/lK5qvy5cMI9EWGk=;
        fh=uIvlVQ0wgD6BUB6XvdaJUG3CWHqEkU1BvccKksAhiw0=;
        b=SJntMwxJnzkL1Aq5daAUhZF6nfqhbMt2zdU4ec0Qprfb5Fse97LEk8FPG/MD2xU2BC
         RcwFQ/yceEe+ptEvUxUIbYVVcygrnE9GpS0AH8mn63Q0utseoDppD+UN6RYu94dDmlvj
         DaVMR2I/fSt+bGJIhDxnfSWa8pacwmXmoS/M/n5PlgJUgwHlwV2qVfNLoCu98BaY7PJj
         O87mqVtKTWWHJRSMjKz4yKvmSEb2CI7kSjarVfdQKHC2lDK4uD0fQ+jQDQwp3qo5kxRu
         WMTo56nSzVcs0lPeYka2XEGdJ4zVcSSXkbhYcnfX1uCcSIKi/0VzANt5L19E+cELF6KI
         KL1A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=FzvE7rNG;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2600:3c0a:e001:78e:0:1991:8:25 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1765979407; x=1766584207; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BII4b8HRaFh1F7CZ59Lnhvp2MK8/lK5qvy5cMI9EWGk=;
        b=ZHuztGZmRp6c/X0SDmPbS3ZIH+peeelAsue8UqZYIZNQjlT2jfdLVBvlYpGgXDzLYY
         ulsua8C3ukGchoC1wPyWdKjAbeFsCep7hJB+oHnPhlt7Bhbl7eZCtsRZ+XD8qife+L9S
         e/44KKxskAp88kNP8zkHyRhUdETPyoTb2LiO4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765979407; x=1766584207;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BII4b8HRaFh1F7CZ59Lnhvp2MK8/lK5qvy5cMI9EWGk=;
        b=gRMJbugK0JiItVaU1cZ3o67tMPhOVad1fVy24QmMXP7DL0BpuTgskMgOy3sbxmQhIc
         FY9JvFlIHJgo/LrwixHOXFCjcya/JamEgLGyUXNtUPRVgq8KQiktkWWNszi+omcPEYod
         rHErTZW+0wCc4ibygmUfrhL+oKKHrIYUGtD1W0VoVPVu/vcbDT+hvObUCj3324fMR7xV
         Nz1zqaOq+0QBaqgE4Tf7Tlr559RtCjRBISyCqIy898MZ71FM1Mf37QhcC/XDTFaJqIGx
         1hYrS++2MlNgufUEFGHZqruHQBag3t1lJHvkJP6QSAFC9Ht7KRW3HH85UaAnof6O4LYs
         3OFw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXB9l2zuPoG4P70xGSokIa6AU0HAePn2TOSl+OT64b7wF+FTvCYGr2SbPUSWoXKr3yby3XOQg==@lfdr.de
X-Gm-Message-State: AOJu0YzCgJ8TM7oPLcuQnFG/vbxJryhvcEVKoD4ptaCabTVi7e5tJCsM
	KRH+WXUpm/1YepG96wg8zurdVt+ZN/yxTTwNrEx67XzuUMR96IrvheJteuVDg2SLlyQ=
X-Google-Smtp-Source: AGHT+IHJ6EpWUAzCkNuYR9PQDSkOLq6S9KjrcZ7+lUybB6twlMM1Q4c8HantcSZ4Yux6bscsQM0iPw==
X-Received: by 2002:a17:903:1988:b0:2a0:ccee:b354 with SMTP id d9443c01a7336-2a0cceebca3mr125317015ad.35.1765979406790;
        Wed, 17 Dec 2025 05:50:06 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="AWVwgWaqxXeA5jcNaHWHYJDDig1THZitUTAGzCDCyT/pbRkCtQ=="
Received: by 2002:a17:902:f307:b0:295:119:a71a with SMTP id
 d9443c01a7336-29f236454a0ls43507255ad.2.-pod-prod-07-us; Wed, 17 Dec 2025
 05:50:05 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCULov0phTYj7XWdHjp7oMxpdh4yg0ksOB8AAb4FFYs1hg4AiCE/DmxMcXK6H4TmFHVpl/w0Bkr8Jv/4TA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:938e:b0:35f:68d:4314 with SMTP id adf61e73a8af0-369adfb4eacmr17989160637.24.1765979405211;
        Wed, 17 Dec 2025 05:50:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1765979405; cv=none;
        d=google.com; s=arc-20240605;
        b=JxDp/j937xcoHW7V9amTS1rKT/ojD06WKhu8viYh9ryhv/83Bn4K1ompnUMnq3m4ZG
         s3W35idyStjqKO0wAA45GPvfnq0sHA+5E3HN8cKwDIrCvCrM9tDMPZmWzID9OUAbBPJE
         Ue6cHE9BLZ1a+shM+zNXQNlEouoADrfUa/wXuHhcY2oNsEYwis2mKP3dBerCSQdzk6vx
         /0pv9IkpuG7KtXH/rJDIp0EqKcvWMPGe/9mJldobbzBQ1jWv14h4djfIEOgShLjqKcTm
         NKSkjh4m/RQ5wWhF8ZK3s8m+edDWUlJqE3TdD0kMIRxQ3ckkrwT9SiVMinPXZ0m9U/zP
         NEnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=yQYvbOHQv76+KB7pzBm9ifwqHtDnN3QQWx04+L1YUTI=;
        fh=fjQCn8Ztyl9/BOrOu2o6/L1jlomO2udBUKMiP3igqSY=;
        b=gpzRCW+l4QgtY5OQv96sqNpKgczpykJ7acLSM7eXvce4HJPwN0fSCkD6hYCnFKNKDz
         HQN8gQ2yUOqOVjrmK6R3BBN2IgFHhArElAM8zjDmW7Li+7LByKvnmX+717p4MzaciVzp
         iGFKugLuoB5JaToayTZ46n6+bvRLTrMejPk5vVUDpShUHb+E7hmD6LZ+DORrwQdUj8Va
         e94b7axeHb3QSdg5y8lxCOlrbGwbKT/dhcXBuYAkeIK1jEMclmqI9Bt79EqCMaUdvwie
         S7BzSbj8jWyxAGA+W56gNgs4bjweNLe1niQePmehJsb3/sOB+JPAFM9AJJXIH9LUUi6l
         g5Qg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=FzvE7rNG;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2600:3c0a:e001:78e:0:1991:8:25 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sea.source.kernel.org (sea.source.kernel.org. [2600:3c0a:e001:78e:0:1991:8:25])
        by mx.google.com with ESMTPS id 41be03b00d2f7-c0c2ed016ecsi32248643a12.469.2025.12.17.05.50.05
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 05:50:05 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2600:3c0a:e001:78e:0:1991:8:25 as permitted sender) client-ip=2600:3c0a:e001:78e:0:1991:8:25;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E4DB244096;
	Wed, 17 Dec 2025 13:50:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56367C4CEF5;
	Wed, 17 Dec 2025 13:50:04 +0000 (UTC)
Date: Wed, 17 Dec 2025 14:50:01 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Chen Changcheng <chenchangcheng@kylinos.cn>
Cc: stern@rowland.harvard.edu, benjamin.tissoires@redhat.com,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH v4] usb: usb-storage: No additional quirks
 need to be added to the EL-R12 optical drive.
Message-ID: <2025121742-spendable-hardened-56e2@gregkh>
References: <20251203071643.57058-1-chenchangcheng@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20251203071643.57058-1-chenchangcheng@kylinos.cn>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=FzvE7rNG;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2600:3c0a:e001:78e:0:1991:8:25 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

On Wed, Dec 03, 2025 at 03:16:43PM +0800, Chen Changcheng wrote:
> The optical drive of EL-R12 has the same vid and pid as INIC-3069,
> as follows:
> T:  Bus=02 Lev=02 Prnt=02 Port=01 Cnt=01 Dev#=  3 Spd=5000 MxCh= 0
> D:  Ver= 3.00 Cls=00(>ifc ) Sub=00 Prot=00 MxPS= 9 #Cfgs=  1
> P:  Vendor=13fd ProdID=3940 Rev= 3.10
> S:  Manufacturer=HL-DT-ST
> S:  Product= DVD+-RW GT80N
> S:  SerialNumber=423349524E4E38303338323439202020
> C:* #Ifs= 1 Cfg#= 1 Atr=80 MxPwr=144mA
> I:* If#= 0 Alt= 0 #EPs= 2 Cls=08(stor.) Sub=02 Prot=50 Driver=usb-storage
> E:  Ad=83(I) Atr=02(Bulk) MxPS=1024 Ivl=0ms
> E:  Ad=0a(O) Atr=02(Bulk) MxPS=1024 Ivl=0ms
> 
> This will result in the optical drive device also adding
> the quirks of US_FL_NO_ATA_1X. When performing an erase operation,
> it will fail, and the reason for the failure is as follows:
> [  388.967742] sr 5:0:0:0: [sr0] tag#0 Send: scmd 0x00000000d20c33a7
> [  388.967742] sr 5:0:0:0: [sr0] tag#0 CDB: ATA command pass through(12)/Blank a1 11 00 00 00 00 00 00 00 00 00 00
> [  388.967773] sr 5:0:0:0: [sr0] tag#0 Done: SUCCESS Result: hostbyte=DID_TARGET_FAILURE driverbyte=DRIVER_OK cmd_age=0s
> [  388.967773] sr 5:0:0:0: [sr0] tag#0 CDB: ATA command pass through(12)/Blank a1 11 00 00 00 00 00 00 00 00 00 00
> [  388.967803] sr 5:0:0:0: [sr0] tag#0 Sense Key : Illegal Request [current]
> [  388.967803] sr 5:0:0:0: [sr0] tag#0 Add. Sense: Invalid field in cdb
> [  388.967803] sr 5:0:0:0: [sr0] tag#0 scsi host busy 1 failed 0
> [  388.967803] sr 5:0:0:0: Notifying upper driver of completion (result 8100002)
> [  388.967834] sr 5:0:0:0: [sr0] tag#0 0 sectors total, 0 bytes done.
> 
> For the EL-R12 standard optical drive, all operational commands
> and usage scenarios were tested without adding the IGNORE_RESIDUE quirks,
> and no issues were encountered. It can be reasonably concluded
> that removing the IGNORE_RESIDUE quirks has no impact.
> 
> Signed-off-by: Chen Changcheng <chenchangcheng@kylinos.cn>
> ---
>  drivers/usb/storage/unusual_uas.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index 1477e31d7763..939a98c2d3f7 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -98,7 +98,7 @@ UNUSUAL_DEV(0x125f, 0xa94a, 0x0160, 0x0160,
>  		US_FL_NO_ATA_1X),
>  
>  /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
> -UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
> +UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x0309,
>  		"Initio Corporation",
>  		"INIC-3069",
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> 
> base-commit: 7d0a66e4bb9081d75c82ec4957c50034cb0ea449
> -- 
> 2.25.1
> 
>

This does not apply to 6.19-rc1 at all :(

Please rebase and resend it.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2025121742-spendable-hardened-56e2%40gregkh.
