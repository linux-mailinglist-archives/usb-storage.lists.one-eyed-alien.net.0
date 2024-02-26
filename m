Return-Path: <usb-storage+bncBCTPRFE7TUKRB7W56GXAMGQE53PEWJQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ej1-x645.google.com (mail-ej1-x645.google.com [IPv6:2a00:1450:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B9086725D
	for <lists+usb-storage@lfdr.de>; Mon, 26 Feb 2024 11:59:10 +0100 (CET)
Received: by mail-ej1-x645.google.com with SMTP id a640c23a62f3a-a3e426228acsf106524066b.3
        for <lists+usb-storage@lfdr.de>; Mon, 26 Feb 2024 02:59:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1708945150; cv=pass;
        d=google.com; s=arc-20160816;
        b=OLSvTyHFWJFtA1kKr1dLmh2dtbOWJrjzlVEEarxQvW+4/mt4o3VuVQhr/au7LMHgeN
         zFJva2cJ8yBE/khGfKT3hRlJd2m7QOHj7UDIli5+rzf+meMCrLSMGw8x/ypswCIw2QZq
         EP4D2HnK0YKfMt+lxq0hfbwh/IPQ9yuC30XZEz2wIzxBpddQhgaGVQgYGePVjz2WqRZ2
         fpEVxbKN5hYZvXdeMoEZ5lqXn1SyiSXK/SWwl3IqhLHpw/cboOcUYNmeloQssxjsHtqX
         VwxPOHzMiTt/0BHQIotM/ei67l+btI1gN6a0cZafyhyNnjL8Sa+EmFVVYTAG8zth9Fp2
         gWDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=HD1SveUcuFx7kLF4ufpQ9EPwrPdoeShPske4GN/h2Mo=;
        fh=SBouvmJ/pX9iZkmHmEMAmly1b40hG9ywDWdaZNsynWU=;
        b=0kiYZ8sYiWT4ymig1iPoVW7nRGsBHkd8CaYSYfMPzDfM+pxYXAnYv1qc7XXV6xeNSx
         3ZHeZ/1UjuFyatodHbSwditbuaXXFH7mk3ln16VgU5HS13+CjtQgQqjOY3kmatYF9maf
         39017stSRxBFFMowFNexmJYC05711UcVNFj3042TWv4x0o8UTr812aeqL16MI90U7sDJ
         ywIYco5QK3iWimKndz6iHq/z7nCZ7FbUco6GWhWTP6UCz1REzIyNd7Zx4fdBlNgB3jt6
         iGrr/XS/J70ygNV/5tKRhF2bP1ZHIQOra4agsqfymXpIfgFC7Agwlk+52MvQ/94AB9HU
         IufQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=e7kLwCYs;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1708945150; x=1709549950; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:to:content-language:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=HD1SveUcuFx7kLF4ufpQ9EPwrPdoeShPske4GN/h2Mo=;
        b=RxRqooSzYNFZUUxafm5jkIEctIH9S3UKoMmJi4+psi82W3DG2X5PXW5VAbfoTh68FE
         C+m5KPfu4U8nx+iLZ0xacCHctJBv4tCRcOoT6/eUkLzglAHKnncy2V44P/bM8WiOYh+h
         T0va0OesQPLCmCc9SQB64z3vs7r/Q9mQQukaY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708945150; x=1709549950;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:to:content-language:subject:user-agent:mime-version
         :date:message-id:x-beenthere:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HD1SveUcuFx7kLF4ufpQ9EPwrPdoeShPske4GN/h2Mo=;
        b=pxxLFNobQkEr1xgceA0Y6vKgMSBNALZ51XTvzCFCnAS1x0VCgO4RcoCWEq8yAND/5B
         Q2kOBJrgQvZrx+KiEe7yYHrcYj/8YKxFhrsQ6uU3w2eZRGdfnw2GWNhPGRnmZAB9V6lo
         VedCfW73ODOYYht1f7Fx8jySOPpiuWOYI/zevqMhEssSR/ULYzuRuK/KvLeSxYQpA2YS
         S7uSO/qrPLDw9PMsoPt9jJmDGsbKyk9vK2tUOTrjfSMuatVXijczQq5SAFYUQqGdi0mo
         PgWEDPxF/W6o2yXoK9n8RwxFearYmuKRXVYI7Xu4P/+mXlxPovflZUCqplNXyazlBm/N
         t/7w==
X-Forwarded-Encrypted: i=2; AJvYcCWFAQpRtDOJ/hK9WVBctcVyFz8beeXUV/zgoRHwwOzC1PAOi8snq+UNEsqD1babUm5diJEvwKgF103PSopzrrHelM/vBiikXvS8
X-Gm-Message-State: AOJu0Yw7Co73aGzogO2PhfgBz2KhmXY0gCXKUqMLX42riB/50dmD0RmI
	GTBCKKg6/KTak3gSLC72rO1RQ1gtm+MFg9RFcDqXR+sqG10JUA/8oKVZy6kFzLk=
X-Google-Smtp-Source: AGHT+IHaCWJct9a/AW6jYrVFbj7gfGTwbpodwdOQL0Z9QMBMuDIX/hXfB9H/BopWmHtMMFquVNJv/w==
X-Received: by 2002:aa7:c898:0:b0:566:1794:7b2 with SMTP id p24-20020aa7c898000000b00566179407b2mr483021eds.13.1708945150296;
        Mon, 26 Feb 2024 02:59:10 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:f12:b0:562:c01:57f9 with SMTP id
 i18-20020a0564020f1200b005620c0157f9ls814871eda.1.-pod-prod-01-eu; Mon, 26
 Feb 2024 02:59:08 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVd8LS8BaG1rOOM7l9fwCUEcAa7yR4GaJvH6YJC/ZROGgP8PNWOocfyFktgQXuA0IQTpexIB0UjvY2h02cp1JbN2WC6CqquLCmEoD0+wkVJ5LvptBI=
X-Received: by 2002:a17:906:e2c8:b0:a43:3ce8:2bab with SMTP id gr8-20020a170906e2c800b00a433ce82babmr2244416ejb.63.1708945148429;
        Mon, 26 Feb 2024 02:59:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1708945148; cv=none;
        d=google.com; s=arc-20160816;
        b=mGWROJSibrQhc5IKA/yU586r+VB0edF9C2tG1HdNDG+OdUSDl2ZtZt+EF1DvKP+BhC
         iSRM73JRnaPAzP94p7taAOXFOQBEVkfUpLAovlqIwbJI5mnBipLLvWBhf0R5mBRyeiK7
         sJVBPqibCzqxi+N666X3fsr9LK/StukFap6qC0FBwY5PJdDqjenwNr8oPkqRwrXHA0xI
         2mYsJH5HZmcW/ZNhFnXrreHgZObPWzPjKyTaiqVPh2tZ3rlOnJsuUN+VWxa9eaHdg7Hw
         9znP+byEcoq9u9BK+byaoagyuH5aTbsbCn6pKhuVnH3Rg+xegJrgyIUopELAGFc0bXyr
         8CnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=RLz2UG7iYBlQjZWsuoaSDjycNBdnd5B3AGu3clJ03m8=;
        fh=UDmUpAeaWKZcygQ6BHd/yb7c6RsVI66tv4wuQr591gg=;
        b=sj1Ld7wCGDDu+jzd1aG63pfVXMFkNjExHLga0KHwE/pfwkQjaoOWRt0xRhSg0lWzb6
         aH9kEulUzEHKeGuI1F/wGKQ9MrcEzO0Tc6evbz6aiJTgkWhVPBacHw4i2mulqI576Y8r
         hIoqzCQM+l1TTI6EncLG8SH9nDlMpDRYNSnEUJXu4dTFArQCBQttnWTWgbB5uPuzhaNd
         O0NDIgdHPPeH1oTlOkWN6X0aUNE2+CjwXUx4GWJP+z1DQL4ELBs0dVTjwpqTdzXCjpim
         jTsvyZ4mDSncxsIucU66OdChw8jxFSksE/4nFuzS4FQnIGhYmPqb+u+brVzutZ23XwSP
         5Gmg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=e7kLwCYs;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id x8-20020a170906b08800b00a3e50af21cbsor966350ejy.12.2024.02.26.02.59.08
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 26 Feb 2024 02:59:08 -0800 (PST)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCWcmdGL1T+EFHd2mUDVrPLfxZRZiNCwSxSFn2yow1tcjOmPEamfs3G+ZssEKvZeWkHqocDRx2MSCYfyhAKYpDeKoXewcU0E71M/gPsxGLN8TENFEwM=
X-Received: by 2002:a17:906:3590:b0:a43:393c:176d with SMTP id o16-20020a170906359000b00a43393c176dmr2035525ejb.20.1708945148074;
        Mon, 26 Feb 2024 02:59:08 -0800 (PST)
Received: from ?IPV6:2001:a61:1366:6801:d8:8490:cf1a:3274? ([2001:a61:1366:6801:d8:8490:cf1a:3274])
        by smtp.gmail.com with ESMTPSA id tj7-20020a170907c24700b00a434dec771esm852555ejc.217.2024.02.26.02.59.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Feb 2024 02:59:07 -0800 (PST)
Message-ID: <99b0fb1b-37b3-4da4-8129-e502ed8e479a@suse.com>
Date: Mon, 26 Feb 2024 11:59:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [syzbot] [usb-storage?] divide error in isd200_ata_command
Content-Language: en-US
To: syzbot <syzbot+28748250ab47a8f04100@syzkaller.appspotmail.com>,
 bvanassche@acm.org, emilne@redhat.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 martin.petersen@oracle.com, stern@rowland.harvard.edu,
 syzkaller-bugs@googlegroups.com, tasos@tasossah.com,
 usb-storage@lists.one-eyed-alien.net
References: <0000000000003eb868061245ba7f@google.com>
From: "'Oliver Neukum' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
In-Reply-To: <0000000000003eb868061245ba7f@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.com header.s=google header.b=e7kLwCYs;       spf=pass
 (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted
 sender) smtp.mailfrom=oneukum@suse.com;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=suse.com
X-Original-From: Oliver Neukum <oneukum@suse.com>
Reply-To: Oliver Neukum <oneukum@suse.com>
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

Hi,

On 26.02.24 10:42, syzbot wrote:
> Hello,
> 
> syzbot found the following issue on:
> 
> HEAD commit:    f2e367d6ad3b Merge tag 'for-6.8/dm-fix-3' of git://git.ker..
> git tree:       upstream
> console+strace: https://syzkaller.appspot.com/x/log.txt?x=114e10e4180000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=eff9f3183d0a20dd
> dashboard link: https://syzkaller.appspot.com/bug?extid=28748250ab47a8f04100
> compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1064b372180000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10aca6ac180000
> 
> Downloadable assets:
> disk image: https://storage.googleapis.com/syzbot-assets/c55ca1fdc5ad/disk-f2e367d6.raw.xz
> vmlinux: https://storage.googleapis.com/syzbot-assets/4556a82fb4ed/vmlinux-f2e367d6.xz
> kernel image: https://storage.googleapis.com/syzbot-assets/95338ed9dad1/bzImage-f2e367d6.xz
> 
> The issue was bisected to:
> 
> commit 321da3dc1f3c92a12e3c5da934090d2992a8814c
> Author: Martin K. Petersen <martin.petersen@oracle.com>
> Date:   Tue Feb 13 14:33:06 2024 +0000
> 
>      scsi: sd: usb_storage: uas: Access media prior to querying device properties

preliminary analysis:

It oopses here:

		} else {
			if (!id[ATA_ID_SECTORS] || !id[ATA_ID_HEADS])
				goto too_early;
			sectnum = (u8)((lba % id[ATA_ID_SECTORS]) + 1);
			cylinder = (u16)(lba / (id[ATA_ID_SECTORS] *
					id[ATA_ID_HEADS]));

in isd200_scsi_to_ata() because it must not be called before isd200_get_inquiry_data()
has completed.

That raises two questions.

1) should we limit the read_before_ms flag to the cases transparent SCSI is used?
2) does isd200_get_inquiry_data() need to validate what it reads?

	Regards
		Oliver

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/99b0fb1b-37b3-4da4-8129-e502ed8e479a%40suse.com.
