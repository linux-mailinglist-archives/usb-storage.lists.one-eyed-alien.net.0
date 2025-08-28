Return-Path: <usb-storage+bncBCC2JRVCV4NRBVUGYLCQMGQEVRPQSRY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf47.google.com (mail-qv1-xf47.google.com [IPv6:2607:f8b0:4864:20::f47])
	by mail.lfdr.de (Postfix) with ESMTPS id 3920BB3A637
	for <lists+usb-storage@lfdr.de>; Thu, 28 Aug 2025 18:27:04 +0200 (CEST)
Received: by mail-qv1-xf47.google.com with SMTP id 6a1803df08f44-70dfcc58904sf6905766d6.1
        for <lists+usb-storage@lfdr.de>; Thu, 28 Aug 2025 09:27:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1756398423; cv=pass;
        d=google.com; s=arc-20240605;
        b=LNM2foyBQv9AdTWGH34Z1fGjw/vquxx/E+wUB/KH6jcAiSGzaMb13J9J/R34juwC4V
         nbgTiEfAu33vFhHGUGUj4egVcJzNKrhbut2HFjRZBT+eQs/i0dwc/a8PmYCo3+8i5icW
         78aKxZvLnoXz+L+pjC/0YEEJNTHcru8g7Q8XOiQWMcTYtXUl1gw46n1Z00juyHyeYY3u
         YA5/kL5xd24nETckBxQnrRQnex20QrZhxwqUvjVzlr6z7X9WguCTbyc0N/18POnl2nSp
         lRHep2JZAKbYBfu5KwCnDYYwHEXMn+XAybuD6255vidoOfmmKtumXXam35SCFEvxfPuw
         Yzbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=jkNSuJG9LCsjkCz7dDDMv5urWNw9Ln0bYLqx2bVbXfE=;
        fh=1vjq+VeifiptcG2HVu2y3ifmaY+QpUrCnOFtLLOb39w=;
        b=EterO8bDq6rH8MnkT3AJYmTwD6ZbjHFfpv6wpBHPKztZNWw9k2GLnxMZuGKbHNoHwn
         Derc2lL0rIC0BTyl35SGegbnNTDUwiJVvx2HU52IgRkR6+n6rvLofgf/KNWc9K4kTsN8
         bPDesKlEVAl4REmlkVtHEkgsRcAuj54vkOqRSfSuZjl9HhYY8nw+f5HSysIt/u9C6GZI
         knUVrdcknGSIG2vHyvoprYF/aj1dBvEA4FLL1RBwIKYLdCTWwp2fwkc+cpLddZZvFFWp
         zW/HizABEUPwrCbi6rJFYPTBNNCD7iAGOVRCjHUPlL3QCFTYmJwCB//wrNYiJtGkADoG
         Bl/g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linux.dev header.s=key1 header.b=oDjU0KnI;
       spf=pass (google.com: domain of thorsten.blum@linux.dev designates 91.218.175.182 as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.dev
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1756398423; x=1757003223; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=jkNSuJG9LCsjkCz7dDDMv5urWNw9Ln0bYLqx2bVbXfE=;
        b=hu6Xvxigv0nmgCNxFVL2vHgeiCMq+9Tl8nPajkdZEr9+N8kWf4fi1qe+hhqFWeQAYs
         //oSTNia0kA1ppvbcjkebxbHavusBBszmsfRX7GsOQ/0FGTN+1ZXaX0PEBUfWyY/az6y
         qXhCAptIatc3Qh9LJjBgLlo95kwQ/MRv01frw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756398423; x=1757003223;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=jkNSuJG9LCsjkCz7dDDMv5urWNw9Ln0bYLqx2bVbXfE=;
        b=FsAq8+ermnSbX34B1oW0QhvHWQsJqd0W2REV0ZQuUp1w5sJvzsHAzRbJgOcxQFl0YC
         IxpRO77c9ybiZzEL8J8BLGEAyBRGXGgTP5MjQvt+CsrPmtQ9jgn38+unihkMriBbuPXP
         p0vB7hqeYLQs7BrUiD8NUoTIXAea0up9DriowBGjid1fMjd+d2/lkrnm08E+u4pEn0tl
         JtiOo39WUZ+kT1nN28nwjibKXtnKMDLYLPVV1qBYu6ciaYm5Yp83iPODMQuKxz5Mdhox
         7a2GOoSdzX1nABw/bRFt9C+Nyt1hkSNcHg1A3r6E0pjACB04bUuBmN4mof8pmQRmbDOK
         WGdg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUIPBv+rBMzW7BR7Zu2/qfu+xw2LmWCEujF6N9W1q1LPwLV/g+P7GMSfMpN+p67ig4b7h2F0w==@lfdr.de
X-Gm-Message-State: AOJu0YyRPf/oD1NGWuCt317EPeluLCGCpU8pmMJjRngGRcksvZ2sN7jZ
	5t8abFBzZ64Ay8ycimdvv+9FJcAsgNhOMnkAnERBkU78x4gjtMrZAy7mRPyh9vda6gU=
X-Google-Smtp-Source: AGHT+IFyu4hTTa8fspoEKfFu3QFZQu7xsXPr0/4bOhbhJXTBWOATSKqT+T2JCQqV9K4wJoYaXr2ncQ==
X-Received: by 2002:a05:6214:6113:b0:70d:dc44:dc73 with SMTP id 6a1803df08f44-70ddc44e5c1mr88330236d6.30.1756398422824;
        Thu, 28 Aug 2025 09:27:02 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZf4HHrHJJp88YHGsXiTOIFgK2TUQcWJO9mRKUsJqlzaDA==
Received: by 2002:a05:6214:3002:b0:70d:b7e6:85e with SMTP id
 6a1803df08f44-70df0580637ls13738856d6.2.-pod-prod-01-us; Thu, 28 Aug 2025
 09:27:01 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVul6h605DVj6ow8dBcpU5E8cUL+22sp0RGN0ns8VuEsWhpYAaomPGx4mSLiL4YNz+oBjemizh+c/e8hQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6214:2a45:b0:70b:7076:cd13 with SMTP id 6a1803df08f44-70d970c4cd1mr310060176d6.2.1756398421554;
        Thu, 28 Aug 2025 09:27:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1756398421; cv=none;
        d=google.com; s=arc-20240605;
        b=JHjg9L0UfqxDuz9U0vT7cLgwy8etZZEA6voarZ/WglpDmtPDjCJOKj2eiKh9xqNdjf
         1wfKtrd7mmwbVR/iGyO3MJjanUPNHE1gd6lMGoACopXrNeY7oqxwKR90HnnFROxpeHVg
         ZTU0FcouehtgcodfTjfW4fWe8IIdrWmWomazXeM8nR+XOBCrxZ6NMEeOS65vDu49GPUn
         P8k6NyZmCaF9RxYo8wBAklawY9H1L1YgQguk6xPqd3u1SjAIDyvWVk02nY+SG9/J+djT
         ywi8rAk12z/MwIa72ZGXN5cwv7Y127+X/yIWu5XwV3hjYdOzznb6DcVl+SZl/lzmPMDq
         8q2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=LcTj8AYdceOqTQSQLAc0f2c7JRl5hi315MYDEFAy0FY=;
        fh=zjuZudG/84AY9U5EMM1K1kqQyj28sh8X2vByyQPlJ8s=;
        b=LTuuhZ8tyjSVqaoRs39Sr9SyTGjZdVMSABb3kBOeXUb+f1EFENnPPG5BhMdWp9+FpX
         zbhnGJyqRoM0q/rGva9UduXToZEIP7+zIRE0KyR7ff+ire9Mx1TnV0sImfmvkWUPZx5s
         SY2k5lc+58bvkb9pwSNk5epuInpqRcxpseFpUFHi2WdLQjd58T4vsM9q9mpND7QifLaP
         k7N2anI+JoTL6qQbbJFLMdF95jrQKawaFY+EbUY0SxkD2aueugh1Azm9KEl8K44JmgRQ
         agplqZU46yOeqzeIh1+K33oFFmk4nhZ7Y7M8RwlkbrHWXSjsgbpQ1ZP/JxdMsxOyrZis
         YxNQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linux.dev header.s=key1 header.b=oDjU0KnI;
       spf=pass (google.com: domain of thorsten.blum@linux.dev designates 91.218.175.182 as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.dev
Received: from out-182.mta0.migadu.com (out-182.mta0.migadu.com. [91.218.175.182])
        by mx.google.com with ESMTPS id 6a1803df08f44-70da738d897si53538146d6.1173.2025.08.28.09.27.01
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 09:27:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of thorsten.blum@linux.dev designates 91.218.175.182 as permitted sender) client-ip=91.218.175.182;
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Thorsten Blum <thorsten.blum@linux.dev>
To: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Thorsten Blum <thorsten.blum@linux.dev>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH RESEND] usb: storage: realtek_cr: Simplify
 residue calculation in rts51x_bulk_transport()
Date: Thu, 28 Aug 2025 18:26:24 +0200
Message-ID: <20250828162623.4840-3-thorsten.blum@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-Original-Sender: thorsten.blum@linux.dev
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linux.dev header.s=key1 header.b=oDjU0KnI;       spf=pass
 (google.com: domain of thorsten.blum@linux.dev designates 91.218.175.182 as
 permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linux.dev
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

Simplify the calculation of 'residue' in rts51x_bulk_transport() and
avoid unnecessarily reassigning 'residue' to itself.

Acked-by: Alan Stern <stern@rowland.harvard.edu>
Signed-off-by: Thorsten Blum <thorsten.blum@linux.dev>
---
 drivers/usb/storage/realtek_cr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
index 2a6c7c567e1c..758258a569a6 100644
--- a/drivers/usb/storage/realtek_cr.c
+++ b/drivers/usb/storage/realtek_cr.c
@@ -261,8 +261,8 @@ static int rts51x_bulk_transport(struct us_data *us, u8 lun,
 	 * try to compute the actual residue, based on how much data
 	 * was really transferred and what the device tells us
 	 */
-	if (residue)
-		residue = residue < buf_len ? residue : buf_len;
+	if (residue > buf_len)
+		residue = buf_len;
 
 	if (act_len)
 		*act_len = buf_len - residue;
-- 
2.50.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250828162623.4840-3-thorsten.blum%40linux.dev.
