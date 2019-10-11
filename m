Return-Path: <usb-storage+bncBCNKHI6TW4FRBFW2QLWQKGQEPS34UPA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x346.google.com (mail-ot1-x346.google.com [IPv6:2607:f8b0:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B78D455B
	for <lists+usb-storage@lfdr.de>; Fri, 11 Oct 2019 18:26:00 +0200 (CEST)
Received: by mail-ot1-x346.google.com with SMTP id d12sf5147684ote.0
        for <lists+usb-storage@lfdr.de>; Fri, 11 Oct 2019 09:26:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570811159; cv=pass;
        d=google.com; s=arc-20160816;
        b=CJzjxjr9oSc+HWKFeLS6nIa2psyT2v4TycWAnnb9I5KIxXwcBmYXvGBAb/RDkXrGkf
         yz+yrgCZ9GG4EpP06St8PmUHC3mkzbSTZ1ShueLE5OoJQ1JASvVMqATRPSBqG/f8zAHI
         xT/4iwkdfyHB8kmOnWqWiSEr/nRd13bHsD3vKq5Jx+bDkkBJn17RGD+2gllAOBh0BW8E
         5BGpNSB7b6/Jlcv1hTbZSVYxNM6MkJ8PZZfPEW35owTzSQb3ws6d6I6dS55RUJ+PM7nJ
         WOQoxQux5auSDi1sZnV7VuuXD+DSDfFsFtN4ZPHug32JADfgvLlNL8qAziheLwDGSBUy
         y3DQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=XSi1KOBSiTSLGSud0m9uwgeTG47Ad3BRgFASKvaKmEw=;
        b=XplP9GR3WDKnFrxQCNkpUF68LFrjiBQkxI0tupcjOuTuS5jGzLmAQUUBcyox4P20E4
         ulR8Mvg1mjEb4jSYoBWK+n3fF4BXXAasgMsYicoY0DO/8vrbETrzDNBE7p+U3/E8gd7x
         olWfSkeZxeeLnJ3j5O3o5YPdyGeGuf03ED0l5jkW8UD2km/F4hD6FrjJxxCVtpLBirLV
         EdcDkPKCzQ1oYUamyf58QsFghT2fhHGr9bwji2u0CJhlgJ/nMklb+Ea2JqHpMUu08ikx
         uDk85Ao2rmrXf9Fd3xQQ6XRlog7hTqZDLmZCyrnihl1+mSXTDsS7rhOn3hOug/mgb4dz
         8Aag==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hmEs5ubV;
       spf=pass (google.com: domain of jaskaransingh7654321@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=jaskaransingh7654321@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XSi1KOBSiTSLGSud0m9uwgeTG47Ad3BRgFASKvaKmEw=;
        b=gX66QX4q6APSrAwFm+eXAdk2/mlNElZstP+86SI4kdDyZk0sCjVcNgYnds67/1Eoio
         CfWlBRm/p4740up8Rn2CpoSZoOn0Q2OFgmWv3Bsv8WFb7KR2cMaXEPh0JeVCeN5jEZTB
         qt3gx6HSYmA0ALxeg+TPGjn8GHSlUMwut+xcY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XSi1KOBSiTSLGSud0m9uwgeTG47Ad3BRgFASKvaKmEw=;
        b=DmCUbhvdZN7+h3JAPHYhb6psnW6vsN6erGavr3U10nx8sH3Urqy/yFIAsCndSzfXhL
         HwxHzpRryoth/5Xmyz/RO51s2Ym8rvqa26IbaUEWJooS74bzF1wwUdPw7O94GVk4rXJG
         2f1W3NN/IYYnQ+398EE1zh1MYsu/BbxzCEenjRyaOM84eEfUb1CNABmhjy7eO9W0vlMs
         oK2/HItGHVYwmPtyP05hVZpOHqbA9VTqytd11P5qCIELYKCCroFzVw3bpazVC7hqy2ue
         KkAwMaa0pOYrsB95iYVtEugiVeW6Opqdeiasma17yxSPntDHMKcrpQa3P550vK6Sexq+
         AWow==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWC1quvpoLpQR+fqhEC7ImXxYmi2tIGKVggotpuiAW0JZuvL8dz
	FUlQ8w0rPGCUf3VPYLxAEmResQ==
X-Google-Smtp-Source: APXvYqxmvajw1+l44niuLfVWTkDBAQ76I+nRaaLpWpjobA+k2akX5w8H/niKFDyqGKKK8SXXLtq/yA==
X-Received: by 2002:a9d:550a:: with SMTP id l10mr183764oth.93.1570811159003;
        Fri, 11 Oct 2019 09:25:59 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a54:4f98:: with SMTP id g24ls1535116oiy.12.gmail; Fri, 11
 Oct 2019 09:25:58 -0700 (PDT)
X-Received: by 2002:aca:dcd6:: with SMTP id t205mr13151167oig.128.1570811158594;
        Fri, 11 Oct 2019 09:25:58 -0700 (PDT)
Received: by 2002:aca:702:0:0:0:0:0 with SMTP id 2msoih;
        Fri, 11 Oct 2019 04:17:37 -0700 (PDT)
X-Received: by 2002:a63:ba05:: with SMTP id k5mr15838888pgf.195.1570792656937;
        Fri, 11 Oct 2019 04:17:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570792656; cv=none;
        d=google.com; s=arc-20160816;
        b=e4ix8uwadfna5BIPDumtoS2DIsZQ3DQgPtZEz8b3RmrrUUW7HWYBB16z+gArB5lTWr
         U2CyE/chLotp/OTF71y5j6puon7EMSKeAL7FQg9szNUemL2gcQzkJQYOqYTWVhOZdHPu
         mMlQ3o2EaGOFV8xnSjSA0j/BNyfR9Ql6Z3r18wub3YLp5Jbj7q8uhXTxisEBVTInjzmq
         6k7R1wkJ48G1MPkMPulfUUiO4MddFrPKuLZBbI3GXegV14MrhSWUEJ7VTjm9+izkEFZm
         94N2nFo8ZC2sWYCZnLtREJ9g6kId6KqdiUMMsX70fVexCk5b5iVUUbzcNPOyZXlsb7HA
         F27w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=VlmC3FzMBaeFdi8vKdtcQ+jsZk6Q6WwIVRbhfWm5BOY=;
        b=l2vP3kE8smDk0lgoeWDQZTM7U53fFUakNvDnOp0TOe/i1qjGm83QioZ8BQ4h+t7qg+
         kjnj1FyMpDMbpfQktjDNkQ7IEn0d9+U7Iu8kfw/88g8VY/G/zwNlpAglFbsrYVdwlpoq
         0WpDrSm0NITvW4nNtJFuqKtKeS7B8uo825B8IF6x/D3CqsHkEiir4JSgRzQwG+kO35u2
         +0TOPW+IrHWDGMka8xDfNPnIVzKZtccCtGlvYmyDneLLc6u3ormVSmu2Krvrx4FKTCat
         drpJoOFVB4SYbDXust/RTyXtA2gzMPyjVah1UfG9qLeVgnW+QtCeVCccXiFtCQvOL/bG
         paLw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hmEs5ubV;
       spf=pass (google.com: domain of jaskaransingh7654321@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=jaskaransingh7654321@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id a14sor10546910pjs.17.2019.10.11.04.17.36
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 11 Oct 2019 04:17:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of jaskaransingh7654321@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a17:90a:730a:: with SMTP id m10mr17082622pjk.78.1570792656558;
        Fri, 11 Oct 2019 04:17:36 -0700 (PDT)
Received: from localhost ([2402:3a80:139e:d60:aa0c:2692:c558:75f5])
        by smtp.gmail.com with ESMTPSA id w14sm22001108pge.56.2019.10.11.04.17.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2019 04:17:36 -0700 (PDT)
Date: Fri, 11 Oct 2019 16:47:32 +0530
From: Jas K <jaskaransingh7654321@gmail.com>
To: syzbot+e7d46eb426883fb97efd@syzkaller.appspotmail.com
Cc: stern@rowland.harvard.edu, gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: KMSAN: uninit-value in alauda_check_media
Message-ID: <20191011111732.GA25982@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: jaskaransingh7654321@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hmEs5ubV;       spf=pass
 (google.com: domain of jaskaransingh7654321@gmail.com designates
 209.85.220.65 as permitted sender) smtp.mailfrom=jaskaransingh7654321@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

Hi, just taking a crack at this. Hope you guys don't mind.

#syz test: https://github.com/google/kasan.git 1e76a3e5

diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
index ddab2cd3d2e7..bb309b9ad65b 100644
--- a/drivers/usb/storage/alauda.c
+++ b/drivers/usb/storage/alauda.c
@@ -452,7 +452,7 @@ static int alauda_init_media(struct us_data *us)
 static int alauda_check_media(struct us_data *us)
 {
 	struct alauda_info *info = (struct alauda_info *) us->extra;
-	unsigned char status[2];
+	unsigned char *status = us->iobuf;
 	int rc;
 
 	rc = alauda_get_media_status(us, status);

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20191011111732.GA25982%40localhost.localdomain.
