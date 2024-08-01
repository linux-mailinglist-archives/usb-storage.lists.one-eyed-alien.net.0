Return-Path: <usb-storage+bncBDTZTRGMXIFBBCFIVO2QMGQEWY5R6KY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id 595B3943A98
	for <lists+usb-storage@lfdr.de>; Thu,  1 Aug 2024 02:17:14 +0200 (CEST)
Received: by mail-oo1-xc47.google.com with SMTP id 006d021491bc7-5ced2d377a5sf4236226eaf.1
        for <lists+usb-storage@lfdr.de>; Wed, 31 Jul 2024 17:17:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722471433; cv=pass;
        d=google.com; s=arc-20160816;
        b=mcS6m9dPBRgOp2Q3hrG5fkP0UCAumjzQymkeagmS8DrLVkC023/qIUBlHB5nq5by1s
         UgaTkPFLSjx0ibbVN3DpKWRRwwFx9a0gPo5lTbH9sF9yY/37y5vhTlPPfzcBqYEckNJv
         RPltRTLVsC0X1I9ZfRAwuuyh4vXgZWVWmG0FClEjNHjO+g9gGC36mNdD/P9OYBjP25GX
         Y1NIgiYKbYDtlq/RkDixwLQMw3WhTyZsn7DEpEShPCEtz4biNJq0cdCFTdkECBjaSLK8
         yyOIsGh/M/XzAWw8s6V8KfTiHCSzY4JBTHekWq8Vlc3xvRPbB8zaWP72hAJlFXtEHkRF
         NNWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=z8lsJ5SXvU3Eamh8TsBUddQdzQ3N06oBo6/6KRBgwys=;
        fh=C9FapigPyFHslw/CZOJsUBae2RkZjrLhsLOtCEdsMeY=;
        b=DTnsglvV2LidzcQC5quFqY9fQy28rhpZitBMGQMpd/xHbAm5NR6eWB7JNAVb8qBCeg
         oDu7ye+zm5x4Ft4C/7DSHbFRYKr58DwDO7SzWCw+m2VLpOTT5UqzNRAyhoohn+JZ+yeL
         kqZptf9piMvRLBZUOg6oN6m4fxbibFtsg8E7sZhcARdT29sBArGxYvPXfwgbcgGlhc89
         mTsvy7s472yJ7ZdXUpbnE9gDVRgYchCj8hrqDWpisbbUjbdWtzwgp90KUjbEuWblVkGf
         OCuIeNZWGWIDimqrLeuNGGeUALs2QMvSUkzrSimpCBr4slO3rae4oPbkpYwLy/02sMDx
         lEaA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=P8e5OJzI;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1722471433; x=1723076233; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z8lsJ5SXvU3Eamh8TsBUddQdzQ3N06oBo6/6KRBgwys=;
        b=Na5T6HZIRLEIRnmNFCjibzorbNwSUN5u2XXVTX7Ot/y2vceca0ZVfqfmDR2Acojox9
         HAaW8LMCHqNwEG/j1LlO6+qM28r0cZkXTtFRAbXjOFHSDzAyxxf1uWygapmz20XFOUd2
         FNqv6AzORGzfduFMN6SnbpCCEgG24zJMTo3rQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722471433; x=1723076233;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z8lsJ5SXvU3Eamh8TsBUddQdzQ3N06oBo6/6KRBgwys=;
        b=uXuqH0bfokQwsOAeUNKfAdnF5IXBHljff4lNRHre2lWUj66c+NsIEb0SDJDE0lDwk9
         Upfbps8wgaKYM15COz6sRWTkb9uWIXTbzt7tjq4yVYugl1+eomjqQwDjRdACs0jpHioD
         dWo1QXKnyFjdZxgUrv3jsaBW9uTYrBu3/dA5A+DFlAA70EwqPkjYuTXprFpxe+CMhH/C
         O0cITOnS3HR0UpmB3GVDM1WRDhzXx65EKAA+N7iQlZLR67os3vkeORNZ09ZSvofz6ymJ
         J2g0PpNJtB+2dRStiNauV3lmLI2NXbuFKhMLmHLNvtAfHe0BvZ+ugLzMxVDMra45XnCS
         8Sog==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXYjPcscL9vbnifm7wK7Otgy7MmCJSPoag9kDZ04GLZcgE95yS4DUGAfaZzxgT0P+DFWj9z3H6XOJr9bIlKXSPeZAwVulgRtdzP
X-Gm-Message-State: AOJu0YyUw2u3hf4QXZ8XShpGU8l164OW6yEpr6EJFsbNGLvjKOskZYmf
	P/SkOtq/XGpz18FV+i0ucr+K4R0r49TjFjf8QBc0H7PdpEMt2Ohy7pOeC0P7+w4=
X-Google-Smtp-Source: AGHT+IFdESxtceqB1tNgNLD9xBbniTXInQ8GlhRvM4OI6cWM9HhFavWhACTEGdZV+aCTgzW8LV5COg==
X-Received: by 2002:a05:6870:7b49:b0:261:bca:4ac4 with SMTP id 586e51a60fabf-2687a362142mr924545fac.9.1722471432818;
        Wed, 31 Jul 2024 17:17:12 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6871:409b:b0:25e:749:fb39 with SMTP id
 586e51a60fabf-2649ff51ce7ls14149fac.1.-pod-prod-06-us; Wed, 31 Jul 2024
 17:17:12 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWGQ4bETpqUEjlRxTvYNHkujKozsUwyi/+eqglLrBQQx1pOheKyrnpRgyOMb26SoDK07BbFfaXbB99QSkLaLmPqWNdPZGcIy7Z/yM5GEpnOOmaBHv8=
X-Received: by 2002:a05:6870:40ce:b0:24c:afec:f1c with SMTP id 586e51a60fabf-2687a75a66emr869976fac.48.1722471431983;
        Wed, 31 Jul 2024 17:17:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722471431; cv=none;
        d=google.com; s=arc-20160816;
        b=dV7WbrMsat6TRnHrQYlB92f8wndCpzkRYwzNyvB8TW4OMQt1hY6hdEHEkYi4Im8w1L
         2wuJO3g8BhRYAoe+LltwLIDfZSgmOknWC5Gr2V1zexB9CgqvNiCR4yNCmql3XRbW0Jba
         5p4CcgcSbad5G4+bQIvwg6W8omnXHuo4sriVCBQ/oV+XR8Kh7l9hBi6JV12jmhenRG7f
         j1QRNgkgVF/chfbTWcPChxGmswsrKHx/safNcvkopW3vMOmNzULA7dfA4x2AIdu4iD/D
         f986R0REjY9fQvUlHemWOHQ+3kjpaDxJLoNo4b1rE1CkChan5JoAXunCZDMcdvRWgyr4
         SPcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=UhERoxVfy9plcciT++PAWTG0LA6Qu67mVSYzSke2H1U=;
        fh=jgkb7am38yPjzZXkQAVozurBPG6OhskQIcxQ3YzqA1w=;
        b=JFShmAN1ym8dZmCkjSjgz7958e/mmXj9zvDVhqFpIx7xJIIG3B6PHkF6yhOssu6PY3
         s5klUDCNwRf7UuzB7ijeOSkf5EpmZQSk/k/SKARyFBlW482iPZRt92p1UIjWjeD3oytd
         d+7Id2s6oAVIED+RQ/YP39Xs5vmDDRmBpOwbLIVWmiQ5sUTEIoWwpxlpznvKM5a5mENz
         iJMRyFAA4d8nNNB65D6DA/2CF/OiQ2DVtwsyYANhdGv08UI5+BrS/3AUKnvO2jB1w2Pg
         aybhZSc+KPeYT6V6tnde5dnXYATd/Gsow4W9i9Geacb5soNzhy8/WTK4R4GGt3hmNQz+
         H7DA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=P8e5OJzI;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id 586e51a60fabf-2655dfa11a3si8550896fac.289.2024.07.31.17.17.11
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 17:17:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C08FE61D48;
	Thu,  1 Aug 2024 00:17:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF4C2C116B1;
	Thu,  1 Aug 2024 00:17:09 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Shantanu Goel <sgoel01@yahoo.com>,
	Oliver Neukum <oneukum@suse.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	stern@rowland.harvard.edu,
	linux-usb@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH AUTOSEL 6.10 096/121] usb: uas: set host status
 byte on data completion error
Date: Wed, 31 Jul 2024 20:00:34 -0400
Message-ID: <20240801000834.3930818-96-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240801000834.3930818-1-sashal@kernel.org>
References: <20240801000834.3930818-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.10.2
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=P8e5OJzI;       spf=pass
 (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

From: Shantanu Goel <sgoel01@yahoo.com>

[ Upstream commit 9d32685a251a754f1823d287df233716aa23bcb9 ]

Set the host status byte when a data completion error is encountered
otherwise the upper layer may end up using the invalid zero'ed data.
The following output was observed from scsi/sd.c prior to this fix.

[   11.872824] sd 0:0:0:1: [sdf] tag#9 data cmplt err -75 uas-tag 1 inflight:
[   11.872826] sd 0:0:0:1: [sdf] tag#9 CDB: Read capacity(16) 9e 10 00 00 00 00 00 00 00 00 00 00 00 20 00 00
[   11.872830] sd 0:0:0:1: [sdf] Sector size 0 reported, assuming 512.

Signed-off-by: Shantanu Goel <sgoel01@yahoo.com>
Acked-by: Oliver Neukum <oneukum@suse.com>
Link: https://lore.kernel.org/r/87msnx4ec6.fsf@yahoo.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/usb/storage/uas.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index b610a2de4ae5d..a04b4cb1382d5 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -423,6 +423,7 @@ static void uas_data_cmplt(struct urb *urb)
 			uas_log_cmd_state(cmnd, "data cmplt err", status);
 		/* error: no data transfered */
 		scsi_set_resid(cmnd, sdb->length);
+		set_host_byte(cmnd, DID_ERROR);
 	} else {
 		scsi_set_resid(cmnd, sdb->length - urb->actual_length);
 	}
-- 
2.43.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240801000834.3930818-96-sashal%40kernel.org.
